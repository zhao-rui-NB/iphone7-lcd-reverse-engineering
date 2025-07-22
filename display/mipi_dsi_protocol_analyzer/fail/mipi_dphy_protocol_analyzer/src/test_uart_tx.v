module test_uart_tx(
    input wire sys_clk,    
    input wire sys_rst_n,  
    output wire tx,                     // UART發送線

    output wire bit_ck, // 位時鐘信號
    output wire debug_tx                     // UART發送線
);


assign debug_tx = tx; // 直接連接到 tx 信號

// UART TX 模組實例化
reg tx_en;
reg [7:0] tx_data;
wire tx_busy;

uart_tx uart_tx_inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .tx(tx),
    .tx_en(tx_en),
    .tx_data(tx_data),
    .tx_busy(tx_busy)
);


parameter hello_str = "ABCD EFGH IJKL MNO\n";
parameter hello_str_len = 19; // 字串長度


// 字串發送狀態機
reg [7:0] char_index;
reg [31:0] delay_counter;

reg sending_data; // 數據發送完成標誌

reg [7:0]cn;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        char_index <= 0;
        tx_en <= 0;
        tx_data <= 0;
        delay_counter <= 0;
    end else begin
        tx_en <= 0;

        if (delay_counter > 0) begin
            delay_counter <= delay_counter - 1;
        end else begin
            if (char_index < hello_str_len) begin
                if (!tx_busy) begin // 如果發送線空閒，則開始發送數據
                    tx_en <= 1; // 啟動發送
                    // tx_data <= message[char_index]; // 設置要發送的數據
                    tx_data <= (hello_str>>((hello_str_len-1-char_index)*8)); // 設置要發送的數據
                    char_index <= char_index + 1; // 更新字元索引
                    if(char_index == hello_str_len-2) begin 
                        tx_data <= cn;
                        cn <= cn + 1; // 更新字元索引
                    end
                end
            end else begin // 發送完成，進入延遲狀態
                delay_counter <= 2700000; // 延遲1秒 (假設系統時鐘為50MHz)
                char_index <= 0; // 重置字元索引
            end
        end
    end
end

endmodule
