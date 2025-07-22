// data_storage_controller_tb

module data_storage_controller_tb();

    initial begin
		$dumpfile("build/data_storage_controller_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, data_storage_controller_tb);     // 記錄所有信號變化，0代表最頂層
        #1_00_000;
   		$finish;
   	end   


	reg sys_clk = 1;
	reg sys_rst_n = 0;
	reg byte_clk = 1;
	reg memory_clk = 1;
	reg pll_lock = 0;
	// reg align_rst_n = 0;
	// reg data_in_valid = 0;

	reg data_in_valid = 0;
	reg [31:0] data_in = 0;

	reg cmd_record = 0;
	reg cmd_read_request = 0;



	// outports wire
wire [1:0]                           	O_psram_ck_n;
wire [1:0]                           	O_psram_cs_n;
wire [1:0]                           	O_psram_reset_n;
wire [15:0] 							IO_psram_dq;
wire [1:0] 								IO_psram_rwds;


wire [(8*16)-1:0] 	read_data_out;
wire                                 	read_data_valid;
wire                                 	done;
wire                                 	ready;



// read_request_addr
reg [20:0] read_request_addr = 0;

data_storage_controller u_data_storage_controller(
	.sys_clk           	( sys_clk            ),
	.byte_clk          	( byte_clk           ),
	.memory_clk        	( memory_clk         ),
	.pll_lock          	( pll_lock           ),
	.sys_rst_n         	( sys_rst_n          ),
	.data_in_valid     	( data_in_valid      ),
	.data_in           	( data_in            ),
	.O_psram_ck_n      	( O_psram_ck_n       ),
	.IO_psram_dq       	( IO_psram_dq        ),
	.IO_psram_rwds     	( IO_psram_rwds      ),
	.O_psram_cs_n      	( O_psram_cs_n       ),
	.O_psram_reset_n   	( O_psram_reset_n    ),
	.cmd_record        	( cmd_record         ),
	.cmd_read_request  	( cmd_read_request   ),
	.read_request_addr 	( read_request_addr  ),
	.read_data_out     	( read_data_out      ),
	.read_data_valid   	( read_data_valid    ),
	.done 				( done  	   	     ),	
	.ready             	( ready              )
);



    // data_storage_controller data_storage_controller_inst(
	



    initial begin 
        #20 sys_rst_n = 1'b0;
        #20 sys_rst_n = 1'b1;
        #20;
		// 復位
		pll_lock = 1'b1;
    
    end

	integer i,j;
	initial begin
		#60; #5;
		// write data 
		while (1) begin
			for (i = 0; i < 16; i = i + 1) begin
				data_in_valid = 1'b1;
				data_in = {i[7:0], i[7:0], i[7:0], i[7:0]};
				#20;
			end
			data_in_valid = 1'b0;
			#60;
		end
	
	end

	initial begin

		#100;
		cmd_record = 1'b1;
		#10;
		cmd_record = 1'b0;

		// wait done == 1
		wait (done == 1'b1);
		wait (ready == 1'b1);
		#10;

		// read data
		cmd_read_request = 1'b1;
		read_request_addr = 21'h00000;
		#10;
		cmd_read_request = 1'b0;

	end
		


    always #10 byte_clk = ~byte_clk; // 50MHz
	always #5 sys_clk = ~sys_clk; // 100MHz
	always #2 memory_clk = ~memory_clk; // 100MHz





endmodule




