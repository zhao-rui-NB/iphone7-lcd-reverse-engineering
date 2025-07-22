// #define FREQ_SYS 120000000   
// #define UART1_BAUD 115200

#include <stdio.h>
#include <string.h>													
#include "string.h"
#include "CH56x_common.h"
#include "hspi.h"
#include "CH56x_usb30.h"



void DebugInit(UINT32 baudrate){ //uart1
	UINT32 x;
	UINT32 t = 120000000;
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


int main( void ){

	SystemInit(120000000);
	Delay_Init(120000000);
	DebugInit(115200);
	PRINT("\n\n\n\n\n\n\n++++++++++++++++\n");
	PRINT("Start @ChipID=%08X\r\n", R8_CHIP_ID );

	dma_fifo_init();
	hspi_init();

	// todo: check if this is needed


    R32_USB_CONTROL = 0;
    PFIC_EnableIRQ(USBSS_IRQn);
    PFIC_EnableIRQ(LINK_IRQn);
	
    PFIC_EnableIRQ(TMR0_IRQn);
	R8_TMR0_INTER_EN = RB_TMR_IE_CYC_END;
    TMR0_TimerInit( 67000000 );
	USB30D_init(ENABLE);

    // Timer1_Init( 240000 );  /* 2ms */

    // HSPI_DataTrans( );

	mDelaymS(100);
	hspi_receive_flag=1;
	PIN_HRTS_LOW(); // set RTS low, fifo not full
	usb_sending_flag = 0;


	while(1){
		// PFIC_DisableIRQ(HSPI_IRQn);
		// PFIC_DisableIRQ(USBSS_IRQn);
		// PFIC_DisableIRQ(LINK_IRQn);
		// PFIC_DisableIRQ(TMR0_IRQn);

		if(hspi_receive_flag==0 && dma_fifo_peek_push_addr(3)!=NULL){
			hspi_receive_flag = 1;
			PIN_HRTS_LOW();
		}

		if (usb_sending_flag==0){
			if(!dma_fifo_is_empty()){
				usb_sending_flag = 1;
				usb_start_sending();
				// printf("trigger start send...\n");
			}
		}

		// PFIC_EnableIRQ(HSPI_IRQn);
		// PFIC_EnableIRQ(USBSS_IRQn);
		// PFIC_EnableIRQ(LINK_IRQn);
		// PFIC_EnableIRQ(TMR0_IRQn);
	}
}

