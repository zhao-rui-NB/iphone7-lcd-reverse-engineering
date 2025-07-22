#include "hspi.h"
#include "CH56x_usb30.h"

// volatile BOOL have_new_data = 0;
// volatile UINT8 hspi_receive_flag = 1;

UINT8V hspi_receive_done = 0;

void hspi_init(){
    // ++++++++++++++++++++++ HSPI GPIO initialization +++++++++++++++++++++
    //TX GPIO PA9 11 21 push-pull output
	R32_PA_DIR |= (1<<9) | (1<<11) | (1<<21);
	//clk 16mA
	R32_PA_DRV |= (1<<11);
	//Rx GPIO PA10 push-pull output
	R32_PA_DIR |= (1<<10);

	//configure HRTS(PB13,hd31) Push-pull output,16mA
	PIN_HRTS_HIGH( );
    R32_PB_DIR |= (  1 << 23  );
    R32_PB_DRV |= (  1 << 23  );
    R32_PB_PU &= ~(  1 << 23  );
    R32_PB_PD &= ~(  1 << 23  );

    // ++++++++++++++++++++++ HSPI initialization +++++++++++++++++++++

	R8_HSPI_CFG &= ~(RB_HSPI_HW_ACK); // no ack
	// R8_HSPI_CFG |= RB_HSPI_DAT16_MOD; // 16bit data
	R8_HSPI_CFG |= RB_HSPI_DAT32_MOD; // 32bit data
	// R8_HSPI_CFG |= RB_HSPI_RX_TOG_EN;
	
    R8_HSPI_CFG &= ~RB_HSPI_HW_ACK; //ACk mode  0   (硬件自动应答模式 用于突发模式，不用于正常模式)
    R8_HSPI_CFG &= ~RB_HSPI_RX_TOG_EN; //Rx ToG En  0
    R8_HSPI_CFG &= ~RB_HSPI_TX_TOG_EN; //Tx ToG En  0  ///+++++

    R8_HSPI_AUX |= RB_HSPI_REQ_FT; 	//Enable fast DMA request // ?? not in datasheet
	R8_HSPI_AUX |= (RB_HSPI_TCK_MOD | RB_HSPI_RCK_MOD);  //下降沿采样

	// R8_HSPI_INT_EN |= RB_HSPI_IE_T_DONE;  // Tx packet Interupt
	R8_HSPI_INT_EN |= RB_HSPI_IE_R_DONE;  // Rx packet Interupt
	R8_HSPI_INT_EN |= RB_HSPI_IE_FIFO_OV;

	// fifo write address 
	R32_HSPI_RX_ADDR0 = BUFFER0_BASE_ADDR;
	R32_HSPI_RX_ADDR1 = BUFFER1_BASE_ADDR;

	// R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer0;


	R8_HSPI_CTRL &= ~(RB_HSPI_ALL_CLR|RB_HSPI_TRX_RST);  //Clear reset
	R8_HSPI_CTRL |= RB_HSPI_ENABLE | RB_HSPI_DMA_EN;

	R8_HSPI_INT_FLAG = 0xF;
	PFIC_EnableIRQ(HSPI_IRQn);
	// PIN_HRTS_LOW( );
}


void HSPI_IRQHandler(void){
	static UINT32 Rx_Cnt = 0;

 	PIN_HRTS_HIGH();    

 	// PIN_HRTS_HIGH();    
	if(R8_HSPI_INT_FLAG & RB_HSPI_IF_R_DONE){  //Single packet received completed
		R8_HSPI_INT_FLAG = RB_HSPI_IF_R_DONE;  //Clear Interrupt
		Rx_Cnt++;
		// printf("serid: %d\n"  , (R8_HSPI_RX_SC & RB_HSPI_RX_NUM) );

        if(R8_HSPI_RTX_STATUS & RB_HSPI_CRC_ERR){  //CRC check err
        	// R8_HSPI_CTRL &= ~RB_HSPI_ENABLE;
        	PRINT("CR err\n");
        }

        if(R8_HSPI_RTX_STATUS & RB_HSPI_NUM_MIS){  // serial do not match
			R8_HSPI_RX_SC &= ~RB_HSPI_RX_NUM;
        	PRINT("NU err\n");
        }

		if((R8_HSPI_RTX_STATUS & (RB_HSPI_CRC_ERR|RB_HSPI_NUM_MIS))==0){ // data received successfully
			// PRINT("RSUCC:%d\n"  , Rx_Cnt);
			// PRINT("rx tog:%d\n" , R8_HSPI_RX_SC & RB_HSPI_RX_TOG);
		}
		
		// last_send_packet  = 4;
		// USBSS->UEP1_TX_DMA = (UINT32)(UINT8*)buffer0;
		// USB30_IN_Set(ENDP_1, ENABLE, ACK, 4, 1024);
		// USB30_Send_ERDY(ENDP_1 | IN, 4);
		// if (R32_HSPI_RX_ADDR0 == (UINT32)(UINT8*)buffer0){
		// 	R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer1;
		// } else {
		// 	R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer0;
		// }
		hspi_receive_done = 1;
	}

	if(R8_HSPI_INT_FLAG & RB_HSPI_IF_FIFO_OV){   //FIFO OV
		R8_HSPI_INT_FLAG = RB_HSPI_IF_FIFO_OV;  //Clear Interrupt
		PRINT("FIFO OV\r\n");
	}
	// PIN_HRTS_LOW();   
}
/*
void print_memory(){
	// PRINT("DMA_RX_Addr0\n");
	UINT32* ptr;
	ptr = (UINT32*)buffer0;
	for(int i=0 ; i<32 ; i++){
		if(i%8 == 0 && i != 0){
			printf("\n");
		}
		printf("0x%08X,  ", *ptr);
		ptr++;
	}
	printf("\n");

	PRINT("DMA_RX_Addr1\n");
	// ptr = (UINT32*)(0x20020000+4096);
	ptr = (UINT32*)buffer1;
	for(int i=0 ; i<32 ; i++){
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
	for(int i=0 ; i<4096/4 ; i++){
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
	for(int i=0 ; i<4096/4 ; i++){
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
	for(int i=0 ; i<4096/4 ; i++){
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


*/