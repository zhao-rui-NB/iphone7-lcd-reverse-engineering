#include <stdio.h>
#include <string.h>													
#include "string.h"
#include "CH56x_common.h"
#include "hspi.h"
#include "CH56x_usb30.h"


#define FREQ_SYS 120000000   
#define UART1_BAUD 115200

void DebugInit(UINT32 baudrate){ //uart1
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


void fill_test_data(void* addr, int value, size_t size) {
    memset(addr, value, size);  // 用固定數值填充
}

int verify_test_data(void* addr, size_t size) {
    uint8_t* p = (uint8_t*)addr;

	uint8_t first_val = p[0];
	for(int i=0 ; i<size ; i++){
		if(p[i] != first_val){
			return -1;
		}
	}
	return first_val;
}


int test(void) {
    printf("DMA FIFO 測試開始\n");

    dma_fifo_init();
    printf("初始化完成\n");

	for(int i=0 ; i<16 ; i++){
		dma_fifo_push();
		dma_fifo_pop();
		dma_fifo_pop();
		dma_fifo_pop();
		dma_fifo_pop();
		
	}


    // Step 1: 測試寫入
    int write_batches = 0;
    while (!dma_fifo_is_full()) {
        void* addr = dma_fifo_peek_push_addr(0);
        if (!addr) {
            printf("取得寫入地址失敗\n");
            break;
        }
		printf("取得地址: %p,寫入%d" , addr , write_batches);
        memset(addr, write_batches, DMA_FIFO_BLOCK_SIZE * DMA_FIFO_PUSH_BLOCKS);
        dma_fifo_push();

        write_batches++;
        printf("寫入第 %d 批成功\n", write_batches);
    }
    printf("總共寫入 %d 批資料\n", write_batches);
    printf("目前 FIFO 資料量：%d 區塊\n", dma_fifo_get_count());

    // // Step 2: 測試連續可讀數量
    // uint8_t cont_blocks = dma_fifo_check_pop_block_contiguous(5);
    // printf("可連續讀取的區塊數量: %d\n", cont_blocks);

    // Step 3: 測試讀取
    int read_batches = 0;
    while (!dma_fifo_is_empty()) {
        void* addr = dma_fifo_peek_pop_addr(0);
        if (!addr) {
            printf("取得讀取地址失敗\n");
            break;
        }
		printf("取得讀取地址: %p, 讀取結果全部=%d" , addr , verify_test_data(addr , DMA_FIFO_BLOCK_SIZE * DMA_FIFO_POP_BLOCKS));
		printf("\t連續可讀: %d\n" , dma_fifo_check_pop_block_contiguous(8));
        int expected_val = read_batches + 1;
        dma_fifo_pop();
        read_batches++;
    }

    printf("總共讀取 %d 批資料\n", read_batches);
    printf("目前 FIFO 資料量：%d 區塊\n", dma_fifo_get_count());

    // // Step 4: 邊界測試
    // if (dma_fifo_is_empty()) {
    //     printf("FIFO 為空測試成功\n");
    // } else {
    //     printf("FIFO 為空測試失敗\n");
    // }

    // if (!dma_fifo_is_full()) {
    //     printf("FIFO 為非滿狀態測試成功\n");
    // } else {
    //     printf("FIFO 為非滿狀態測試失敗\n");
    // }

    printf("DMA FIFO 測試完成\n");

    return 0;
}

int main( void ){

	SystemInit(FREQ_SYS);
	Delay_Init(FREQ_SYS);
	DebugInit(UART1_BAUD);
	PRINT("\n\n\n\n\n\n\n++++++++++++99++++\n");
	PRINT("Start @ChipID=%08X\r\n", R8_CHIP_ID );

	dma_fifo_init();

	test();

	while(1){}
	
}

