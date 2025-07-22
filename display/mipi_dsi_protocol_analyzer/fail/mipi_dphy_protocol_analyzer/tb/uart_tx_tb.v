`timescale 1ns / 1ps

module uart_tx_tb;

// 模組參數
parameter CLK_FREQ = 100_000_000;  // 100 MHz
parameter BAUD_RATE = 115200;
localparam BIT_PERIOD = 1_000_000_000 / BAUD_RATE; // 每個位的時間 (ns)

// 輸入信號
reg sys_clk = 0;
reg sys_rst_n = 0;
reg tx_en = 0;
reg [7:0] tx_data = 0;

// 輸出信號
wire tx;
wire tx_busy;
wire tx_done;

// 實例化被測試模組
uart_tx uut (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .tx(tx),
    .tx_en(tx_en),
    .tx_data(tx_data),
    .tx_busy(tx_busy)
);

// 時鐘生成 (100 MHz)
// initial begin
//     sys_clk = 0;
// end
// initial begin
//     #2;
//     forever begin
//         #5 sys_clk = ~sys_clk; // 10ns 周期 (100MHz)
//     end
// end

always #5 sys_clk = ~sys_clk; // 10ns 周期 (100MHz)


initial begin
    $dumpfile("build/uart_tx_tb.vcd");  // 設定 VCD 文件名稱
    $dumpvars(0, uart_tx_tb);     // 記錄所有信號變化，0代表最頂層
    #1_000_000;
    $finish;
end   


// 主測試流程
initial begin
    // 初始化
    sys_rst_n = 0;
    tx_en = 0;
    tx_data = 8'h00;
    
    // 復位
    #100;
    sys_rst_n = 1;
    #100;
    
    // 測試1: 發送單個字節 0x55
    wait (!tx_busy);
    tx_data = 8'h61;
    tx_en = 1;
    #10;
    tx_en = 0;
    
    
    // 第一個字節
    wait (!tx_busy);
    tx_data = 8'h41;
    tx_en = 1;
    #10;
    tx_en = 0;
    
    // 第二個字節
    wait (!tx_busy);
    tx_data = 8'h5A;
    tx_en = 1;
    #10;
    tx_en = 0;
    
    // #(BIT_PERIOD * 2);


    # 1000_000; // 等待一些時間
    $finish;
end

endmodule