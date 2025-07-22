// data_storage_controller_tb
// timescale 10ns / 1ns
`timescale 1ns/1ns
module test_data_storage_controller_tb();

    initial begin
		$dumpfile("build/test_data_storage_controller_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, test_data_storage_controller_tb);     // 記錄所有信號變化，0代表最頂層
        #500_000_000; // 等待 1 秒
   		$finish;
   	end   


	reg sys_clk = 1;
	reg sys_rst_n = 0;

    wire [1:0] O_psram_ck;
    wire [1:0] O_psram_ck_n;
    wire [15:0] IO_psram_dq;
    wire [1:0] IO_psram_rwds;
    wire [1:0] O_psram_cs_n;
    wire [1:0] O_psram_reset_n;

    test_data_storage_controller u_test_data_storage_controller(
        .sys_clk_27(sys_clk),
        .sys_rst_n(sys_rst_n),

        .O_psram_ck(O_psram_ck),
        .O_psram_ck_n(O_psram_ck_n),
        .IO_psram_dq(IO_psram_dq),
        .IO_psram_rwds(IO_psram_rwds),
        .O_psram_cs_n(O_psram_cs_n),
        .O_psram_reset_n(O_psram_reset_n)
    );



    initial begin 
        #20 sys_rst_n = 1'b0;
        #20 sys_rst_n = 1'b1;
        #20;
    
    end


	always #5 sys_clk = ~sys_clk; // 100MHz





endmodule




