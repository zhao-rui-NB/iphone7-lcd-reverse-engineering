module top_tb();

	reg sys_rst_n = 0;
   	reg clk = 0;
	reg clk90 = 0;

	reg [1:0] LP_CLK;

	wire [1:0] LP_DATA0;
	reg [1:0] LP_DATA0_drive;

	assign LP_DATA0 = LP_DATA0_drive;


	wire HS_DATA0_P;
	wire HS_DATA0_N;

	reg HS_DATA0_sig = 0;
	assign HS_DATA0_P = HS_DATA0_sig;
	assign HS_DATA0_N = ~HS_DATA0_sig;

	// a function to send hs byte 

	task send_hs_byte;
		input [7:0] data;

		integer i;
		begin
			// send byte data
			for (i = 0; i < 8; i = i + 1) begin
				HS_DATA0_sig = data[i]; #10;
				// print i 
				$display("send data %d", i);
			end
		end
	endtask


   	initial begin
		LP_DATA0_drive = 2'b11;
		
		sys_rst_n = 0;
		#100;
		sys_rst_n = 1;
		#100;
		

		// start send hs data
		LP_DATA0_drive = 2'b01; #100
		LP_DATA0_drive = 2'b00; #100

		// send hs sync seq 00011101	
		#5;

		// 00011101
		send_hs_byte(8'b10111000); // hs sync 

		send_hs_byte(8'h00);
		send_hs_byte(8'hFF);
		send_hs_byte(8'h00);
		
		send_hs_byte(8'h12); 
		send_hs_byte(8'h34); 
		send_hs_byte(8'h56); 
		send_hs_byte(8'h78); 
		send_hs_byte(8'h90); 

		send_hs_byte(8'ha0);
		send_hs_byte(8'ha1);
		send_hs_byte(8'ha2);
		send_hs_byte(8'ha3);
		send_hs_byte(8'ha4);
		send_hs_byte(8'ha5);
		send_hs_byte(8'ha6);
		send_hs_byte(8'ha7);

		//start hs trail for stop 
		send_hs_byte(8'h00); // hs trail
		send_hs_byte(8'h00); // hs trail

		
		// HS_DATA0_sig = 1; #24;


		#100 LP_DATA0_drive = 2'b11;
		

	end

	// make 2 clock phase 90 degree
	initial begin
		#5
		forever #10 clk = ~clk;

	end

	initial begin
		#10
		forever #10 clk90 = ~clk90;
	end

    initial begin
		$dumpfile("build/top_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, top_tb);     // 記錄所有信號變化，0代表最頂層
        #1_0_000;
   		$finish;
   	end   

	


	top u_top(
		.sys_clk(clk),// input sys_clk,
		.sys_rst_n(sys_rst_n),// input sy	_n,

		// // MIPI HS (LVDS)
		.HS_CLK_P(clk),// input HS_CLK_P,
		.HS_CLK_N(~clk),// input HS_CLK_N,
		// .HS_DATA3_P(),// input HS_DATA3_P,
		// .HS_DATA3_N(),// input HS_DATA3_N,
		// .HS_DATA2_P(),// input HS_DATA2_P,
		// .HS_DATA2_N(),// input HS_DATA2_N,
		// .HS_DATA1_P(),// input HS_DATA1_P,
		// .HS_DATA1_N(),// input HS_DATA1_N,
		.HS_DATA0_P(HS_DATA0_P),// input HS_DATA0_P,
		.HS_DATA0_N(HS_DATA0_N),// input HS_DATA0_N,

		// // MIPI LP 
		.LP_CLK(),// inout [1:0] LP_CLK,
		// .LP_DATA3(),// inout [1:0] LP_DATA3,
		// .LP_DATA2(),// inout [1:0] LP_DATA2,
		// .LP_DATA1(),// inout [1:0] LP_DATA1,
		.LP_DATA0(LP_DATA0),// inout [1:0] LP_DATA0,

		.key()// input [3:0] key
	);


endmodule




