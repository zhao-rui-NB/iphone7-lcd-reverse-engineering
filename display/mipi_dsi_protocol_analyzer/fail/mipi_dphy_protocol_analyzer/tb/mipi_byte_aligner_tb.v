
module mipi_byte_aligner_tb();

    initial begin
		$dumpfile("build/mipi_byte_aligner_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, mipi_byte_aligner_tb);     // 記錄所有信號變化，0代表最頂層
        #1_0_000;
   		$finish;
   	end   



    reg         byte_clk = 0;
    reg         sys_rst_n = 0;
    reg         align_rst_n = 0;
    reg [7:0]   data_in = 0;
    reg         data_in_valid = 0;

    // outports wire
    wire       	data_out_valid;
    wire [7:0] 	data_out;

    mipi_byte_aligner mipi_byte_aligner_inst(
        .byte_clk       	(byte_clk        ),
        .sys_rst_n      	(sys_rst_n       ),
        .align_rst_n    	(align_rst_n     ),
        .data_in        	(data_in         ),
        .data_out_valid 	(data_out_valid  ),
        .data_out       	(data_out        )
    );

    parameter p = 2;
    // 00011101                                                        14       15       16       17       18       19
    wire [0:159+8] send_seq = 168'b00000000_00000000_00000000_00011101_00101000_10101000_01101000_11101000_00011000_10011000_01011000_11011000_00111000_10111000_01111000_11111000_00000100_10000100_01000100 >> p;
    integer i;

    initial begin 
        #20 sys_rst_n = 1'b0;
        #20 sys_rst_n = 1'b1;
    
        #20 align_rst_n = 1'b0;
        #20 align_rst_n = 1'b1;
        #10;
        for (i = 0; i < 160/8; i = i + 1) begin
            // #20 data_in = send_seq[i*8 +: 8];
            #20 data_in = {send_seq[i*8+7], send_seq[i*8+6], send_seq[i*8+5], send_seq[i*8+4], send_seq[i*8+3], send_seq[i*8+2], send_seq[i*8+1], send_seq[i*8]}; 
            data_in_valid = 1'b1;
            // #20 data_in_valid = 1'b0;
        end
    
    end

    always #10 byte_clk = ~byte_clk; // 50MHz





endmodule




