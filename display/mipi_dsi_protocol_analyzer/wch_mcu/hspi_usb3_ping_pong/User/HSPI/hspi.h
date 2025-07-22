#ifndef __HSPI_H__
#define __HSPI_H__

// #define  FREQ_SYS   80000000
#include "CH56x_common.h"


#define HSPI_RX_BASE_ADDR        0x20020000
#define BUFFER_BLOCK_SIZE        4096
#define BUFFER0_BASE_ADDR        0x20020000
#define BUFFER1_BASE_ADDR        (0x20020000+BUFFER_BLOCK_SIZE)


#define PIN_HRTS_LOW( )             ( R32_PB_CLR |= ( 1 << 23 ) ) // low, fifo not full
#define PIN_HRTS_HIGH( )            ( R32_PB_OUT |= ( 1 << 23 ) ) // high, fifo full 

// extern volatile UINT8 hspi_receive_flag;
// extern volatile UINT8 have_new_data;

extern UINT8V hspi_receive_done;


void HSPI_IRQHandler (void) __attribute__((interrupt("WCH-Interrupt-fast")));

void hspi_init();

void print_memory();



#endif