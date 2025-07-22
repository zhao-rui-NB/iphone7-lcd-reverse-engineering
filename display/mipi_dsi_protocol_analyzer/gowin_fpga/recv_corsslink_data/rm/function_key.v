module function_key (
    input clk, // clk , not sync with sys_clk
    input sys_clk, // this clock come after system reset

    input next_key,
    input ok_key,

    output func_sys_rst,
    output [1:0] func_disp_led, // Function display LED

    // ++++++ system clk domain ++++++ 
    // output func_key_save_data,
    // output func_key_output_data,
    output trigger_save_data,
    output trigger_output_data
    // output func_3
);


    wire next_key_db; // 除彈跳後的 next_key 信號
    wire negedge_next_key;
    debounce debounce_next (
        .clk                 (clk           ),
        .rst_n               (1'b1              ),
        .key_in              (next_key          ),  
        .key_out             (next_key_db       ),
        .key_posedge_pulse   (  ),
        .key_negedge_pulse   (negedge_next_key)
    );

    wire ok_key_db; // 除彈跳後的 ok_key 信號
    wire negedge_ok_key;
    debounce debounce_ok (
        .clk                 (clk           ),
        .rst_n               (1'b1              ),
        .key_in              (ok_key            ),  
        .key_out             (ok_key_db         ),
        .key_posedge_pulse   (  ),
        .key_negedge_pulse   (  )
    );

    reg [1:0] func_cnt;
    assign func_disp_led = func_cnt;

    always @(posedge clk) begin
        if (negedge_next_key) begin
            func_cnt <= func_cnt + 1'b1; // 每次按下 next_key，功能計數器加一
        end else begin
            func_cnt <= func_cnt; // 保持當前功能計數器值
        end
    end

    wire func_key_rst_n_db    = (func_cnt == 0) ? ok_key_db  : 1'b1; // 當功能計數器為 0 時，ok_key_db 控制系統復位
    wire func_key_save_db     = (func_cnt == 1) ? ok_key_db  : 1'b1; // 當功能計數器為 1 時，ok_key_db 控制保存操作
    wire func_key_output_db   = (func_cnt == 2) ? ok_key_db  : 1'b1; // 當功能計數器為 2 時，ok_key_db 控制輸出操作


    // ++++++++++ system clock domain ++++++++++
    reg save_data_key_d0; 
    reg save_data_key_d1;
    reg output_data_key_d0;
    reg output_data_key_d1;

    // sync debounced key to system clock
    always @(posedge sys_clk) begin
        save_data_key_d0 <= func_key_save_db; // First stage sync
        save_data_key_d1 <= save_data_key_d0; // Second stage sync
        output_data_key_d0 <= func_key_output_db; // First stage sync
        output_data_key_d1 <= output_data_key_d0; // Second stage sync
    end

    wire negedge_save_data_key      = (save_data_key_d1 && !save_data_key_d0); // Detect falling edge of save_data_key_d1
    wire negedge_output_data_key    = (output_data_key_d1 && !output_data_key_d0); // Detect falling edge of output_data_key_d1
    assign trigger_save_data = negedge_save_data_key; // Trigger save data when save data key is pressed
    assign trigger_output_data = negedge_output_data_key; // Trigger output data when output data key

endmodule