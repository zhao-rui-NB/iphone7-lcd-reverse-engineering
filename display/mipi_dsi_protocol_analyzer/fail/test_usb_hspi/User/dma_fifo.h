#ifndef DMA_FIFO_H
#define DMA_FIFO_H

#include "CH56x_common.h"

#define DMA_FIFO_BASE_ADDR        0x20020000
#define DMA_FIFO_BLOCK_SIZE       1024
#define DMA_FIFO_TOTAL_BLOCKS     96

#define DMA_FIFO_PUSH_BLOCKS  4  // write 4 blocks at a time (4096 bytes)
#define DMA_FIFO_POP_BLOCKS   1  // read 1 block at a time (1024 bytes)


extern volatile uint8_t read_ind;   // 資料讀取的位置
extern volatile uint8_t write_ind;   // 資料寫入的位置
extern volatile uint8_t data_count;  

inline uint8_t dma_fifo_is_empty(void) { // not enough for read
    return (data_count < DMA_FIFO_POP_BLOCKS); 
}

inline uint8_t dma_fifo_is_full(void) { // not enough for write
    return (data_count + DMA_FIFO_PUSH_BLOCKS) > DMA_FIFO_TOTAL_BLOCKS;
}

inline uint8_t  dma_fifo_get_count(void) {
    return data_count;
}

void dma_fifo_init(void);

void* dma_fifo_peek_push_addr(uint8_t offset);
void dma_fifo_push(void);

void* dma_fifo_peek_pop_addr(uint8_t offset);
void dma_fifo_pop(void);

uint8_t dma_fifo_check_pop_block_contiguous(uint8_t max_check_blocks);

#endif

