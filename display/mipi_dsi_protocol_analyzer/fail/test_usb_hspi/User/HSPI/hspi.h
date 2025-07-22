#ifndef __HSPI_H__
#define __HSPI_H__

// #define  FREQ_SYS   80000000
#include "CH56x_common.h"
#include "dma_fifo.h"
#include "dma_fifo.h"
#include "CH56x_usb30.h"

#define PIN_HRTS_LOW( )             ( R32_PB_CLR |= ( 1 << 13 ) ) // low, fifo not full
#define PIN_HRTS_HIGH( )            ( R32_PB_OUT |= ( 1 << 13 ) ) // high, fifo full 

extern volatile UINT8 hspi_receive_flag;

void HSPI_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));

void hspi_init();





#endif