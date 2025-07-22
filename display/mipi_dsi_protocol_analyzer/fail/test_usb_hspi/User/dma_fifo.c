#include "dma_fifo.h"

volatile uint8_t read_ind = 0;   // 資料讀取的位置
volatile uint8_t write_ind = 0;   // 資料寫入的位置
volatile uint8_t data_count = 0;  

static inline uint32_t get_block_addr(uint8_t index) {
    return DMA_FIFO_BASE_ADDR + (index % DMA_FIFO_TOTAL_BLOCKS) * DMA_FIFO_BLOCK_SIZE;
}

void dma_fifo_init(void) {
    read_ind = 0;
    write_ind = 0;
    data_count = 0;
}



// write
void* dma_fifo_peek_push_addr(uint8_t offset) {
    if ((data_count + (offset+1)*DMA_FIFO_PUSH_BLOCKS) > DMA_FIFO_TOTAL_BLOCKS) {
        return NULL;  // 沒空間
    }
    uint8_t target = (write_ind + offset*DMA_FIFO_PUSH_BLOCKS) % DMA_FIFO_TOTAL_BLOCKS;
    void* addr = (void*)get_block_addr(target);
    return addr;
}


void dma_fifo_push(void) {
    if (!dma_fifo_is_full()) {
        write_ind = (write_ind + DMA_FIFO_PUSH_BLOCKS) % DMA_FIFO_TOTAL_BLOCKS;
        data_count += DMA_FIFO_PUSH_BLOCKS;
    }
}

// read
void* dma_fifo_peek_pop_addr(uint8_t offset) {
    if (data_count < ((offset+1)*DMA_FIFO_POP_BLOCKS)) {
        return NULL;  // 沒資料
    }
    uint8_t target = (read_ind + offset*DMA_FIFO_POP_BLOCKS) % DMA_FIFO_TOTAL_BLOCKS;
    void* addr = (void*)get_block_addr(target);
    return addr;
}

void dma_fifo_pop(void) {
    if ( !dma_fifo_is_empty() ) {
        read_ind = (read_ind + DMA_FIFO_POP_BLOCKS) % DMA_FIFO_TOTAL_BLOCKS;
        data_count -= DMA_FIFO_POP_BLOCKS;
    }
}

uint8_t dma_fifo_check_pop_block_contiguous(uint8_t max_check_blocks) {
    // return countiguous blocks available for pop
    if (data_count < max_check_blocks*DMA_FIFO_POP_BLOCKS) {
        return 0;  // no enough data
    }

    uint8_t to_memory_count = DMA_FIFO_TOTAL_BLOCKS - read_ind; // 從讀取位置到結尾的區塊數量

    if (to_memory_count >= max_check_blocks) {
        return max_check_blocks;  // 有足夠的連續區塊
    } else {
        return to_memory_count;  // 返回到記憶體結尾的區塊數量
    }
}




