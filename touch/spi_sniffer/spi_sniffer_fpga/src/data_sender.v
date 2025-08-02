module data_sender(
    input wire sys_clk,          // 50 MHz clock input
    input wire rst_n,            // Active low reset

    // uart tx interface
    output reg tx_en,
    output wire [7:0] tx_data,
    input wire tx_busy,

    // uart tx fifo interface
    output reg uart_tx_fifo_wr_en,
    output reg [7:0] uart_tx_fifo_wr_data,
    input wire uart_tx_fifo_full,

    output reg uart_tx_fifo_rd_en,
    input wire [7:0] uart_tx_fifo_rd_data,
    input wire uart_tx_fifo_empty,

    input wire [13:0] uart_tx_fifo_wnum,

    // spi interface
    input cs_start,
    input cs_end,
    input data_valid,
    input [7:0] mosi_data,
    input [7:0] miso_data,


    output reg fifo_full_error

);

    // ctrl the uart_tx
    assign tx_data = tx_en ? uart_tx_fifo_rd_data : 8'b0; // send data from FIFO when tx_en is high
    always @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_en <= 1'b0;
            uart_tx_fifo_rd_en <= 1'b0; // disable read
        end else begin
            tx_en <= 1'b0;
            
            if (!uart_tx_fifo_rd_en) begin // not read req
                if (!tx_busy && !uart_tx_fifo_empty) begin // if tx is not busy and fifo is not empty
                    uart_tx_fifo_rd_en <= 1'b1;
                end
            end else begin // req data
                tx_en <= 1'b1; // enable tx
                uart_tx_fifo_rd_en <= 1'b0; // disable read
            end
        end
    end

    // packetize data
    // reg [7:0] data_counter;
    reg [15:0] checksum;

    reg [7:0] mosi_reg;
    reg [7:0] miso_reg;

    reg [3:0] state;
    localparam IDLE = 0;
    localparam SEND_HEADER1 = 1;
    localparam SEND_HEADER2 = 2;
    localparam WAIT_DATA_VALID = 3;
    localparam SEND_MOSI = 4;
    localparam SEND_MISO = 5;
    localparam SEND_CHECKSUM1 = 6;
    localparam SEND_CHECKSUM2 = 7;
    localparam SEND_END1 = 8;
    localparam SEND_END2 = 9;

    localparam ERROR = 15;



    always @ (posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            uart_tx_fifo_wr_en <= 1'b0; // enable write
            uart_tx_fifo_wr_data <= 8'b0; // reset write data
            checksum <= 16'b0;

            mosi_reg <= 8'b0;
            miso_reg <= 8'b0;

            fifo_full_error <= 1'b0;
            state <= IDLE;
        end else begin
            uart_tx_fifo_wr_en <= 1'b0; // disable write
            uart_tx_fifo_wr_data <= 8'b0; // reset write data
            
            
            case (state)
                IDLE: begin
                    if (cs_start) begin
                        checksum <= 16'b0;
                        state <= SEND_HEADER1; // go to send header state
                    end
                end

                SEND_HEADER1: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= 8'h94; // header byte 1
                        checksum <= checksum + 8'h94; // update checksum
                        state <= SEND_HEADER2; // go to send header 2 state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                SEND_HEADER2: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= 8'h87; // header byte 2
                        checksum <= checksum + 8'h87; // update checksum
                        state <= WAIT_DATA_VALID; // go to wait data valid state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                WAIT_DATA_VALID: begin
                    if (data_valid) begin
                        mosi_reg <= mosi_data; // store mosi data
                        miso_reg <= miso_data; // store miso data
                        state <= SEND_MOSI; // go to send mosi state
                    end else if (cs_end) begin
                        state <= SEND_CHECKSUM1; // go to send checksum state
                    end
                end

                SEND_MOSI: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= mosi_reg; // send mosi data
                        checksum <= checksum + mosi_reg; // update checksum
                        state <= SEND_MISO; // go to send miso state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                SEND_MISO: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= miso_reg; // send miso data
                        checksum <= checksum + miso_reg; // update checksum
                        state <= WAIT_DATA_VALID; // go to wait data valid state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                SEND_CHECKSUM1: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= checksum[15:8]; // send checksum byte 1
                        state <= SEND_CHECKSUM2; // go to send checksum 2 state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                SEND_CHECKSUM2: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= checksum[7:0]; // send checksum byte 2
                        state <= SEND_END1; // go back to idle state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                SEND_END1: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= 8'h04; // send end byte 1
                        state <= SEND_END2; // go to send end 2 state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end
                SEND_END2: begin
                    if (!uart_tx_fifo_full) begin
                        uart_tx_fifo_wr_en <= 1'b1; // enable write
                        uart_tx_fifo_wr_data <= 8'h87; // send end byte 2
                        state <= IDLE; // go back to idle state
                    end else begin
                        fifo_full_error <= 1'b1; // set fifo full error
                        state <= ERROR; // go to error state
                    end
                end

                ERROR: begin
                    // stay in error state
                    fifo_full_error <= 1'b1; // keep fifo full error
                end

            endcase                        
        end
    end

endmodule