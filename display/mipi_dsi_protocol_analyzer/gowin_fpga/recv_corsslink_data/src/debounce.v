

/* 

wire btn_clean;

debounce #(
    .CLK_FREQ_HZ(50000000),
    .DEBOUNCE_MS(20)
) debounce_btn (
    .clk(clk),
    .rst_n(rst_n),
    .key_in(button_raw),  // 來自 IO pin
    .key_out(btn_clean)   // 穩定後的輸出
);


*/


module debounce #(
    parameter CLK_FREQ_HZ = 80000000,   // 系統時脈（Hz）
    parameter DEBOUNCE_MS = 200          // 除彈跳時間（毫秒）
)(
    input wire clk,         // 系統時脈
    input wire rst_n,       // 非同步重置（低有效）
    input wire key_in,      // 原始按鍵輸入
    output reg key_out,      // 除彈跳後輸出
    output key_posedge_pulse, // 按鍵上升沿輸出
    output key_negedge_pulse  // 按鍵下降沿輸出
);

    // 計算除彈跳用的最大計數值
    localparam integer MAX_CNT = (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS;

    reg [31:0] counter;
    reg key_sync_0, key_sync_1;
    reg key_last;

    assign key_posedge_pulse = (!key_last && key_sync_1); // 偵測按鍵上升沿
    assign key_negedge_pulse = (key_last && !key_sync_1); // 偵測按鍵下降沿

    // 同步按鍵輸入，避免亞穩定
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            key_sync_0 <= 1'b1;
            key_sync_1 <= 1'b1;
        end else begin
            key_sync_0 <= key_in;
            key_sync_1 <= key_sync_0;
        end
    end

    // 除彈跳邏輯
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            key_last <= 1'b1;
            key_out <= 1'b1;
        end else if (key_sync_1 != key_last) begin
            // 偵測到變化，開始計時
            counter <= 0;
            key_last <= key_sync_1;
        end else if (counter < MAX_CNT) begin
            // 計時中
            counter <= counter + 1;
        end else begin
            // 穩定達到時間，更新輸出
            key_out <= key_last;
        end
    end

endmodule

