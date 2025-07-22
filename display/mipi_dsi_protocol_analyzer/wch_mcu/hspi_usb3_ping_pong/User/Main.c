// #define FREQ_SYS 120000000   
// #define UART1_BAUD 115200

#include <stdio.h>
#include <string.h>													
#include "string.h"
#include "CH56x_common.h"

#include "CH56x_usb30.h"
#include "hspi.h"

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

// UINT8V ping_pong_state = 0;

int main( void ){
	SystemInit(120000000);
	Delay_Init(120000000);
	DebugInit(1000000);
	PRINT("\n\n\n\n\n\n\n++++++++++++++++\n");
	PRINT("Start @ChipID=%08X\r\n", R8_CHIP_ID );
	PRINT("hello\n");

    R32_USB_CONTROL = 0;
    PFIC_EnableIRQ(USBSS_IRQn);
    PFIC_EnableIRQ(LINK_IRQn);
	
    PFIC_EnableIRQ(TMR0_IRQn);
	R8_TMR0_INTER_EN = RB_TMR_IE_CYC_END;
    TMR0_TimerInit( 67000000 );
	USB30D_init(ENABLE);

	hspi_init();

	// ping pong state :
	// 0: hspi rx buffer0 , usb tx buffer1
	// 1: hspi rx buffer1 , usb tx buffer0
	// R32_HSPI_RX_ADDR0 = BUFFER0_BASE_ADDR;
	// R32_HSPI_RX_ADDR1 = BUFFER1_BASE_ADDR;
	R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer0;
	R32_HSPI_RX_ADDR1 = (UINT32)(UINT8*)buffer1;

	PIN_HRTS_LOW(); // start recv

	while(1){
		// if (hspi_receive_done){
		// 	hspi_receive_done = 0;
		// 	R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer0;
		// 	PIN_HRTS_LOW(); // start recv
		// }
		

		// 2 buffer
		if(usb_ep1_upload_done_flag && hspi_receive_done){ // buffer can swap
			PFIC_DisableIRQ(USBSS_IRQn);
			PFIC_DisableIRQ(HSPI_IRQn);

			usb_ep1_upload_done_flag = 0;
			hspi_receive_done = 0;
			if (ping_pong_state == 0){
				ping_pong_state = 1;
				R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer1;
				// tx_addr_ptr = BUFFER0_BASE_ADDR;
				// USBSS->UEP1_TX_DMA = BUFFER0_BASE_ADDR;
				tx_addr_ptr = (UINT32)(UINT8*)buffer0;
				USBSS->UEP1_TX_DMA = (UINT32)(UINT8*)buffer0;
				
				last_send_packet = 4;
				USB30_IN_Set(ENDP_1, ENABLE, ACK, 4, 1024);
				USB30_Send_ERDY(ENDP_1 | IN, 4);
				PIN_HRTS_LOW(); // start recv
				
			}
			else {
				ping_pong_state = 0;
				R32_HSPI_RX_ADDR0 = (UINT32)(UINT8*)buffer0;
				// tx_addr_ptr = BUFFER1_BASE_ADDR;
				// USBSS->UEP1_TX_DMA = BUFFER1_BASE_ADDR;
				tx_addr_ptr = (UINT32)(UINT8*)buffer1;
				USBSS->UEP1_TX_DMA = (UINT32)(UINT8*)buffer1;

				last_send_packet = 4;
				USB30_IN_Set(ENDP_1, ENABLE, ACK, 4, 1024);
				USB30_Send_ERDY(ENDP_1 | IN, 4);
				PIN_HRTS_LOW(); // start recv
				
			}
			PFIC_EnableIRQ(USBSS_IRQn);
			PFIC_EnableIRQ(HSPI_IRQn);

		}
		
	}
}

