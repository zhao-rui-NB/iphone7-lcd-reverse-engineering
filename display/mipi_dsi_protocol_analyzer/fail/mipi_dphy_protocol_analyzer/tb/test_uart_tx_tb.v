


module test_uart_tx_tb;



    initial begin
		$dumpfile("build/test_uart_tx_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, test_uart_tx_tb);     // 記錄所有信號變化，0代表最頂層
        #1_000_000;
   		$finish;
   	end   



    reg sys_clk = 0;
    reg sys_rst_n = 0;

    initial begin 
        forever #5 sys_clk = ~sys_clk; // 10ns 周期 (100MHz)
    end

    initial begin
        sys_rst_n = 0;
        #100;
        sys_rst_n = 1;
        #100;
    end

    // outports wire
    wire   	tx;
    wire   	bit_ck;
    wire   	debug_tx;

    test_uart_tx u_test_uart_tx(
        .sys_clk   	( sys_clk    ),
        .sys_rst_n 	( sys_rst_n  ),
        .tx        	( tx         ),
        .bit_ck    	( bit_ck     ),
        .debug_tx  	( debug_tx   )
    );


endmodule




