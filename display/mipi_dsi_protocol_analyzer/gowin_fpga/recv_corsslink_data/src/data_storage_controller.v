module data_storage_controller (
    
    input sys_clk, // System clock
    input sys_rst_n, // System reset, active low

    input save_data_key,
    input output_data_key,
    // input trigger_save_data,
    // input trigger_output_data,

    output reg save_data_led,
    output reg output_data_led,

    // input fifo interface
    input input_fifo_almost_empty,
    output reg input_fifo_reset,
    output reg input_fifo_read_en,
    input [63:0] input_fifo_read_data,

    // output fifo interface
    output reg output_fifo_reset,
    output reg output_fifo_write_en,
    output reg [63:0] output_fifo_write_data,
    input output_fifo_almost_full,

    // psram ctrl interface
    output reg [20:0] psram_addr, // PSRAM address
    output reg psram_cmd, // PSRAM command
    output reg psram_cmd_en, // PSRAM command enable
    output [63:0] psram_write_data, // PSRAM write data
    input [63:0] psram_read_data, // PSRAM read data
    input psram_read_data_valid // PSRAM read data valid
);



wire negedge_save_data_key; // Detect falling edge of save_data_key
debounce debounce_save (
    .clk                 (sys_clk           ),
    .rst_n               (sys_rst_n              ),
    .key_in              (save_data_key            ),  
    .key_out             (   ),
    .key_posedge_pulse   (  ),
    .key_negedge_pulse   ( negedge_save_data_key )
);

wire negedge_output_data_key; // Detect falling edge of save_data_key
debounce debounce_output (
    .clk                 (sys_clk           ),
    .rst_n               (sys_rst_n              ),
    .key_in              (output_data_key            ),  
    .key_out             (   ),
    .key_posedge_pulse   (  ),
    .key_negedge_pulse   ( negedge_output_data_key )
);


// MEMORY : system =  2 : 1 and ddr, so data ratio X4(burst 128, data need send 32 clks)
parameter PSRAM_BURST_LEN = 128; // 突發長度
parameter PSRAM_BURST_CLK_CYCLES = PSRAM_BURST_LEN / 4; // 數據讀寫佔用時鐘週期數
parameter PSRAM_BURST_ADDR_ADD = PSRAM_BURST_CLK_CYCLES*2; // 每次寫入後地址增加的值
parameter PSRAM_TCMD = PSRAM_BURST_CLK_CYCLES + 10; // 42


parameter STATE_IDLE = 0;
parameter STATE_SAVE_DATA_INPUT_FIFO_READ_REQ = 1;
parameter STATE_SAVE_DATA_WRITE_PSRAM = 2;

parameter STATE_OUTPUT_DATA_PSRAM_READ_REQ = 3;
parameter STATE_OUTPUT_DATA_WRITE_FIFO = 4;

parameter STATE_WAIT_PSRAM_IDLE = 3; // 等待 psram 閒置狀態

// save data step:
// 1. wait input fifo not almost empty, send read enable signal to input fifo
// 2. read data from input fifo, send psram write command, write data to psram
// 3. wait psram tcmd  
// 4. update psram address, repeat step 1 and 2 until input fifo almost empty
// parameter STATE_SAVE_DATA_READ_REQ = 1;

// output data step:
// 1. wait output fifo not almost full, send read req to psram 
// 2. read data from psram, write data to output fifo
// 3. wait psram tcmd, then update address, repeat step 1 and 2 until psram address reach the end
// parameter STATE_IDLE = 0;


// parameter STATE_WAIT_WRITE = 2;
// parameter STATE_OUTPUT_DATA = 3;

// psram_write_data <= (clk_cnt < PSRAM_BURST_CLK_CYCLES) ? input_fifo_read_data : 0; // 在突發長度內寫入數據

reg input_fifo_to_psram_write;
assign psram_write_data = (input_fifo_to_psram_write) ? input_fifo_read_data : 0; // 在突發長度內寫入數據

reg [3:0] state;
reg [7:0] clk_cnt; // 用於計數時鐘週期
reg [7:0] data_valid_cnt;
reg [31:0] delay_counter;

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= 0;
        input_fifo_reset <= 1; // 重置 FIFO
        input_fifo_read_en <= 0;

        output_fifo_reset <= 1; // 重置 FIFO
        output_fifo_write_en <= 0; // 不寫入 FIFO
        output_fifo_write_data <= 0; // 寫入數據歸零


        psram_cmd <= 0;
        psram_cmd_en <= 0;
        psram_addr <= 0;
        input_fifo_to_psram_write <= 0;

        save_data_led <= 0; // LED 初始狀態為關閉

        clk_cnt <= 0; 
        data_valid_cnt <=0;
        delay_counter <= 0; // 延遲計數器初始值為0
        state <= STATE_IDLE;
    end else begin
        case (state)
            STATE_IDLE: begin
                input_fifo_reset <= 1; // 重置 FIFO
                input_fifo_read_en <= 0; // 不讀取 FIFO

                output_fifo_reset <= 1; // 重置 FIFO
                output_fifo_write_en <= 0; // 不寫入 FIFO
                output_fifo_write_data <= 0; // 寫入數據歸零

                // PSRAM 控制信號歸零
                psram_cmd <= 0; // 不發送命令
                psram_cmd_en <= 0; // 不啟用命令
                psram_addr <= 0; // 地址歸零
                input_fifo_to_psram_write <= 0; // 寫入數據歸零

                save_data_led <= 0; // LED 關閉
                output_data_led <= 0; // LED 關閉

                clk_cnt <= 0; // 計數器歸零
                data_valid_cnt <=0;

                if (negedge_save_data_key && delay_counter == 0) begin // 當按鍵被按下時
                    save_data_led <= 1; // 點亮 LED
                    state = STATE_SAVE_DATA_INPUT_FIFO_READ_REQ; // 轉到讀取請求狀態
                end else if (negedge_output_data_key && delay_counter == 0) begin // 當輸出按鍵被按下時
                    output_data_led <= 1; // 點亮 LED
                    output_fifo_reset <= 0; // 重置 FIFO

                    state = STATE_OUTPUT_DATA_PSRAM_READ_REQ; // 轉到輸出數據請求狀態
                end
                
                if (delay_counter > 0) begin
                    delay_counter <= delay_counter - 1'b1;
                end

            end

            STATE_SAVE_DATA_INPUT_FIFO_READ_REQ: begin
                input_fifo_reset <= 0; // 取消 FIFO 重置
                clk_cnt <= 0; // 計數器歸零
                if (!input_fifo_almost_empty) begin // 如果 FIFO 不幾乎為空
                    input_fifo_read_en <= 1; // 啟用 FIFO 讀取
                    state <= STATE_SAVE_DATA_WRITE_PSRAM; // 轉到寫入 PSRAM 狀態
                end
            end

            STATE_SAVE_DATA_WRITE_PSRAM: begin
                clk_cnt <= clk_cnt + 1'b1; // 計數器加一

                // only first send psram command
                psram_cmd <= (clk_cnt == 0) ? 1 : 0; // 在第一個時鐘週期發送 PSRAM 命令
                psram_cmd_en <= (clk_cnt == 0) ? 1 : 0; // 在第一個時鐘週期啟用 PSRAM 命令
                // psram_write_data <= (clk_cnt < PSRAM_BURST_CLK_CYCLES) ? input_fifo_read_data : 0; // 在突發長度內寫入數據
                input_fifo_to_psram_write <= (clk_cnt < PSRAM_BURST_CLK_CYCLES) ? 1 : 0; // 在突發長度內寫入數據

                if (clk_cnt == PSRAM_BURST_CLK_CYCLES-1) begin
                    // 最後一個時鐘週期，關閉 fifo 讀取
                    input_fifo_read_en <= 0; // 停止讀取 FIFO
                // end else if (clk_cnt == PSRAM_BURST_CLK_CYCLES) begin
                end else if (clk_cnt == PSRAM_TCMD-1) begin
                    // 等待 PSRAM 閒置狀態
                    // update地址
                    psram_addr <= psram_addr + PSRAM_BURST_ADDR_ADD; // 更新地址
                    // 判斷下一個狀態，地址到了最後一個地址，則回到空閒狀態, 21位
                    if ({1'b0, psram_addr} + PSRAM_BURST_ADDR_ADD > {1'b0,{21{1'b1}}} ) begin //21'h1FFFFF
                        delay_counter <= 32'd160_000_000; // 延遲 1s
                        state <= STATE_IDLE; // 如果地址達到最大值，回到空閒狀態
                    end else begin
                        state <= STATE_SAVE_DATA_INPUT_FIFO_READ_REQ; // 否則回到讀取請求狀態
                    end
                end
            end

            STATE_OUTPUT_DATA_PSRAM_READ_REQ: begin
                output_fifo_reset <= 0; // 取消 FIFO 重置
                clk_cnt <= 0; // 計數器歸零
                data_valid_cnt <=0;
                if (!output_fifo_almost_full) begin // 如果 FIFO 不幾乎為滿
                    psram_cmd <= 0; // 0: read command
                    psram_cmd_en <= 1;
                    state <= STATE_OUTPUT_DATA_WRITE_FIFO;
                end
            end

            STATE_OUTPUT_DATA_WRITE_FIFO: begin
                clk_cnt <= clk_cnt + 1'b1;

                psram_cmd <= 0; // 0: read command
                psram_cmd_en <= 0;

                // only first send psram command
                data_valid_cnt <= (psram_read_data_valid) ? (data_valid_cnt + 1'b1) : data_valid_cnt;
                output_fifo_write_en <= psram_read_data_valid; // 當 PSRAM 讀取數據有效時，啟用 FIFO 寫入
                output_fifo_write_data <= (psram_read_data_valid) ? psram_read_data : 0; // 當 PSRAM 讀取數據有效時，寫入數據

                if ((clk_cnt >= PSRAM_TCMD-1) && (data_valid_cnt >= PSRAM_BURST_CLK_CYCLES)) begin // psram ready and read data all read out
                    // 等待 PSRAM 閒置狀態
                    psram_addr <= psram_addr + PSRAM_BURST_ADDR_ADD; // 更新地址
                    // 判斷下一個狀態，地址到了最後一個地址，則回到空閒狀態, 21位
                    if ({1'b0, psram_addr} + PSRAM_BURST_ADDR_ADD > {1'b0,{21{1'b1}}} ) begin //21'h1FFFFF
                        delay_counter <= 32'd160_000_000; // 延遲 1s
                        state <= STATE_IDLE; // 如果地址達到最大值，回到空閒狀態
                    end else begin
                        state <= STATE_OUTPUT_DATA_PSRAM_READ_REQ; // 否則回到讀取請求狀態
                    end
                end
            end

        endcase
    end

end





endmodule