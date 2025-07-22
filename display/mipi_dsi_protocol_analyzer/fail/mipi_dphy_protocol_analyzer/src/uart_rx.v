module uart_rx (
    input wire sys_clk,
    input wire sys_rst_n,
    input wire rx,
    output reg [7:0] rx_data,
    output reg rx_data_valid,
    output reg rx_error
);


// parameter CLK_FREQ = 27_000_000;
// parameter CLK_FREQ = 50_000_000;
parameter CLK_FREQ = 84_000_000;

// parameter BAUD_RATE = 115200;
parameter BAUD_RATE = 3000000;

localparam IDLE = 2'b00;
localparam START = 2'b01;
localparam DATA = 2'b10;
localparam STOP = 2'b11;

localparam SAMPLE_COUNT = CLK_FREQ / BAUD_RATE;
localparam SAMPLE_MID = SAMPLE_COUNT / 2;
localparam SAMPLE_COUNT_WIDTH = $clog2(SAMPLE_COUNT);

reg [1:0] state;
reg [3:0] bit_count;
reg [SAMPLE_COUNT_WIDTH-1:0] clk_count;
reg [7:0] data_reg;

// 同步器
reg uart_rx_sync;
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        uart_rx_sync <= 1'b1;
    end else begin
        uart_rx_sync <= rx;
    end
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= IDLE;
        rx_data <= 8'd0;
        rx_data_valid <= 1'b0;
        rx_error <= 1'b0;
        bit_count <= 4'd0;
        clk_count <= 0;
        data_reg <= 8'd0;
    end else begin
        rx_data_valid <= 1'b0;
        rx_error <= 1'b0;
        
        case (state)
            IDLE: begin
                if (!uart_rx_sync) begin  // 檢測起始位
                    state <= START;
                    clk_count <= 0;
                end
            end
            
            START: begin
                if (clk_count == SAMPLE_MID) begin
                    if (!uart_rx_sync) begin  // 確認起始位
                        state <= DATA;
                        bit_count <= 4'd0;
                        clk_count <= 0;
                    end else begin
                        state <= IDLE;  // 假起始位
                    end
                end else begin
                    clk_count <= clk_count + 1;
                end
            end
            
            DATA: begin
                if (clk_count == SAMPLE_COUNT - 1) begin
                    clk_count <= 0;
                    data_reg[bit_count] <= uart_rx_sync;
                    
                    if (bit_count == 7) begin
                        state <= STOP;
                    end else begin
                        bit_count <= bit_count + 4'd1;
                    end
                end else begin
                    clk_count <= clk_count + 1;
                end
            end
            
            STOP: begin
                if (clk_count == SAMPLE_COUNT - 1) begin
                    state <= IDLE;
                    rx_data <= data_reg;
                    rx_data_valid <= 1'b1;
                    
                    if (uart_rx_sync != 1'b1) begin
                        rx_error <= 1'b1;  // 停止位錯誤
                    end
                end else begin
                    clk_count <= clk_count + 1;
                end
            end
            
            default: state <= IDLE;
        endcase
    end
end

endmodule