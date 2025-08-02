module uart_tx(
    input wire sys_clk,    
    input wire sys_rst_n,  
    output wire tx,
    input wire tx_en,
    input wire [7:0] tx_data,
    output tx_busy      
);

// parameter CLK_FREQ = 27_000_000;  // 系統時鐘頻率 (Hz)
parameter CLK_FREQ = 84_000_000;  // 系統時鐘頻率 (Hz)
// parameter BAUD_RATE = 115200;     // 波特率
parameter BAUD_RATE = 3000000;     // 波特率

localparam CLK_PER_BIT = CLK_FREQ / BAUD_RATE;
localparam CLK_COUNTER_WIDTH = $clog2(CLK_PER_BIT);

localparam TX_IDLE = 2'b00;
localparam TX_TRANSMIT = 2'b01;

reg [9:0] tx_shift_reg;                     // 發送移位寄存器 (包含起始位、數據位、奇偶位、停止位)
reg [3:0] tx_bit_counter;                   // 發送位計數器
reg [CLK_COUNTER_WIDTH-1:0] tx_clk_counter; // 波特率時鐘計數器

reg [1:0] tx_state; 

assign tx = tx_shift_reg[0];  // 發送數據輸出
assign tx_busy = (tx_state != TX_IDLE) || (tx_state == TX_IDLE && tx_en); // 發送忙標誌

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        tx_shift_reg <= {10{1'b1}}; // 初始化為高電平 (停止位)
        tx_bit_counter <= 0;
        tx_clk_counter <= 0;
        tx_state <= TX_IDLE; // 初始化狀態為 TX_IDLE
    end else begin
        case (tx_state) 
            TX_IDLE: begin
                tx_bit_counter <= 0;
                tx_clk_counter <= 0;

                if (tx_en) begin // lock data
                    tx_shift_reg <= {1'b1, tx_data, 1'b0}; // [9] = 1; [8:1] = tx_data; [0] = 0;
                    tx_state <= TX_TRANSMIT;
                end
            end

            TX_TRANSMIT: begin
                if (tx_clk_counter < CLK_PER_BIT - 1) begin
                    tx_clk_counter <= tx_clk_counter + 1;
                end else begin
                    tx_clk_counter <= 0;

                    if (tx_bit_counter < 10-1) begin // if is not last bit
                        tx_bit_counter <= tx_bit_counter + 1;
                        tx_shift_reg <= {1'b1, tx_shift_reg[9:1]}; // >> 1
                    end else begin
                        tx_state <= TX_IDLE;
                    end
                end
            end
        endcase
    end
end

endmodule