#define  FREQ_SYS   80000000
#include "CH56x_common.h"
#include "dma_fifo.h"

#define PIN_HRTS_LOW( )             ( R32_PB_CLR |= ( 1 << 13 ) ) // low, fifo not full
#define PIN_HRTS_HIGH( )            ( R32_PB_OUT |= ( 1 << 13 ) ) // high, fifo full 

volatile BOOL have_new_data = 0;

void DebugInit(UINT32 baudrate){
	UINT32 x;
	UINT32 t = FREQ_SYS;
	
	x = 10 * t * 2 / 16 / baudrate;
	x = ( x + 5 ) / 10;
	R8_UART1_DIV = 1;
	R16_UART1_DL = x;
	R8_UART1_FCR = RB_FCR_FIFO_TRIG | RB_FCR_TX_FIFO_CLR | RB_FCR_RX_FIFO_CLR | RB_FCR_FIFO_EN;
	R8_UART1_LCR = RB_LCR_WORD_SZ;
	R8_UART1_IER = RB_IER_TXD_EN;
	R32_PA_SMT |= (1<<8) |(1<<7);
	R32_PA_DIR |= (1<<8);
}

void hspi_init(){
	R8_HSPI_CFG &= ~(RB_HSPI_HW_ACK); // no ack
	R8_HSPI_CFG |= RB_HSPI_DAT16_MOD; // 16bit data
	R8_HSPI_CFG |= RB_HSPI_RX_TOG_EN; // 16bit data
	
    R8_HSPI_AUX |= RB_HSPI_REQ_FT; 	//Enable fast DMA request // ?? not in datasheet

	// R8_HSPI_INT_EN |= RB_HSPI_IE_T_DONE;  // Tx packet Interupt
	R8_HSPI_INT_EN |= RB_HSPI_IE_R_DONE;  // Rx packet Interupt
	R8_HSPI_INT_EN |= RB_HSPI_IE_FIFO_OV;

	// get fifo write address 
	R32_HSPI_RX_ADDR0 = (UINT32)dma_fifo_peek_write_addr(0); // Get the first buffer address
	R32_HSPI_RX_ADDR1 = (UINT32)dma_fifo_peek_write_addr(1); // Get the second buffer address

	R8_HSPI_CTRL &= ~(RB_HSPI_ALL_CLR|RB_HSPI_TRX_RST);  //Clear reset
	R8_HSPI_CTRL |= RB_HSPI_ENABLE | RB_HSPI_DMA_EN;

	R8_HSPI_INT_FLAG = 0xF;
	PFIC_EnableIRQ(HSPI_IRQn);
}

void HSPI_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));
void HSPI_IRQHandler(void){
	static UINT32 Rx_Cnt = 0;

	if(R8_HSPI_INT_FLAG & RB_HSPI_IF_R_DONE){  //Single packet received completed
		R8_HSPI_INT_FLAG = RB_HSPI_IF_R_DONE;  //Clear Interrupt
		Rx_Cnt++;
		printf("rx done int, rx_cnt: %d\n", Rx_Cnt);

        if(R8_HSPI_RTX_STATUS & RB_HSPI_CRC_ERR){  //CRC check err
        	// R8_HSPI_CTRL &= ~RB_HSPI_ENABLE;
        	PRINT("\n--------\nCRC err\n");
        }

        if(R8_HSPI_RTX_STATUS & RB_HSPI_NUM_MIS){  // serial do not match
        	PRINT("\n--------\nNUM_MIS err\n");
        }

		if((R8_HSPI_RTX_STATUS & (RB_HSPI_CRC_ERR|RB_HSPI_NUM_MIS))==0){ // data received successfully
			dma_fifo_push();
			
			// next buffer is used by DMA, so we update the next next buffer address
			void* next_next_addr = dma_fifo_peek_write_addr(1); // Get the next next buffer address
			if (next_next_addr == NULL){
				PRINT("[ERROR] FIFO full, data will overwrite\n");
			}
			else {
				if (R8_HSPI_RX_SC & RB_HSPI_RX_TOG){ // now dma is using addr1, so we update addr0
					R32_HSPI_RX_ADDR0 = (UINT32)next_next_addr;
				}
				else {
					R32_HSPI_RX_ADDR1 = (UINT32)next_next_addr;
				}
			}

			// if fifo almost full, set RTS high
			if(dma_fifo_get_count() >= (DMA_FIFO_TOTAL_BLOCKS-3)){
				PIN_HRTS_HIGH(); // set RTS high, fifo full
			}

		}
	
		have_new_data = TRUE;
	}

	if(R8_HSPI_INT_FLAG & RB_HSPI_IF_FIFO_OV){   //FIFO OV
		R8_HSPI_INT_FLAG = RB_HSPI_IF_FIFO_OV;  //Clear Interrupt
		PRINT("FIFO OV\r\n");
	}

}

void print_memory(){
	PRINT("DMA_RX_Addr0\n");
	UINT32* ptr;
	ptr = (UINT32*)0x20020000;
	for(int i=0 ; i<64 ; i++){
		if(i%8 == 0 && i != 0){
			printf("\n");
		}
		printf("0x%08X,  ", *ptr);
		ptr++;
	}
	printf("\n");

	PRINT("DMA_RX_Addr1\n");
	ptr = (UINT32*)(0x20020000+4096);
	for(int i=0 ; i<64 ; i++){
		if(i%8 == 0 && i != 0){
			printf("\n");
		}
		printf("0x%08X,  ", *ptr);
		ptr++;
	}
	printf("\n");
}

int check_data_type(UINT32* ptr){
	// Check data type in the buffer
	// 0: all zero, 1: all one, 2: incremental data otherwise return -1 
	// 0:00000000, 1:FFFFFFFF, 2:incremental data
	UINT32* p;

	// check all zero
	p = ptr;
	UINT8 all_zero = 1;
	for(int i=0 ; i<DMA_FIFO_BLOCK_SIZE/4 ; i++){
		if(*p != 0){
			all_zero = 0;
			break;
		}
		p++;
	}
	if(all_zero){
		return 0;
	}

	// check all one		
	p = ptr;
	UINT8 all_one = 1;
	for(int i=0 ; i<DMA_FIFO_BLOCK_SIZE/4 ; i++){
		if(*p != 0xFFFFFFFF){
			all_one = 0;
			break;
		}
		p++;
	}
	if(all_one){
		return 1;
	}

	// check incremental data
	p = ptr;
	UINT8 incremental = 1;
	for(int i=0 ; i<DMA_FIFO_BLOCK_SIZE/4 ; i++){
		if(*p != i){
			incremental = 0;
			break;
		}
		p++;
	}
	if(incremental){
		return 2;
	}

	// unknown data type
	return -1;

}

int main(){
	SystemInit(FREQ_SYS);
	Delay_Init(FREQ_SYS);
	DebugInit(115200);
	PRINT("\n\n\n\n\n\n\n++++++++++++++++\n");
	PRINT("Start @ChipID=%02X\r\n", R8_CHIP_ID );
	// PRINT("addr: %08X , %08X\n" , DMA_RX_Addr0 , DMA_RX_Addr1);

	//TX GPIO PA9 11 21 push-pull output
	R32_PA_DIR |= (1<<9) | (1<<11) | (1<<21);
	//clk 16mA
	R32_PA_DRV |= (1<<11);
	//Rx GPIO PA10 push-pull output
	R32_PA_DIR |= (1<<10);

	/* configure HRTS(PB13,hd31) Push-pull output,16mA */
	PIN_HRTS_HIGH( );
    R32_PB_DIR |= (  1 << 13  );
    R32_PB_DRV |= (  1 << 13  );
    R32_PB_PU &= ~(  1 << 13  );
    R32_PB_PD &= ~(  1 << 13  );

	dma_fifo_init();
	hspi_init();

	mDelaymS(100);
	PIN_HRTS_LOW(); // set RTS low, fifo not full

	UINT8 i = 0;
	while(1){

			
		// PRINT("[fifo] count: %d\n", dma_fifo_get_count());
		if(!dma_fifo_is_empty()){
			void* read_addr = dma_fifo_peek_read_addr(0); // Get the first buffer address
			if (read_addr == NULL){
				PRINT("FIFO is empty, no data to read\n");
			}
			else {
				PRINT("[read] address 0x%08X ", read_addr);
				int data_type = check_data_type((UINT32*)read_addr);
				printf("-> recv new data type %d\n", data_type);
				//pop the data from fifo
				dma_fifo_pop();
			}
		}
	

		// print_memory();
		

		// mDelaymS(350);

		if(dma_fifo_get_count() >= (DMA_FIFO_TOTAL_BLOCKS-3)){
			PIN_HRTS_HIGH(); // set RTS high, fifo full
		}
		else{
			PIN_HRTS_LOW(); // set RTS low, fifo not full
		}
	}
}
