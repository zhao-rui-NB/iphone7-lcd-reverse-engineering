
module mipi_multi_lane_aligner_tb();

    initial begin
		$dumpfile("build/mipi_multi_lane_aligner_tb.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, mipi_multi_lane_aligner_tb);     // 記錄所有信號變化，0代表最頂層
        #1_0_000;
   		$finish;
   	end   



    reg         byte_clk = 1;
    reg         sys_rst_n = 0;

    reg [3:0]   lanes_data_in_valid = 4'b0000; // {lane3_valid, lane2_valid, lane1_valid, lane0_valid}
    reg [31:0]  lanes_data_in = 32'h00000000; //{lane3[7:0], lane2[7:0], lane1[7:0], lane0[7:0]}

    // outports wire
    wire       	data_out_valid;
    wire [7:0] 	data_out;

    // outports wire
    wire        	lanes_data_out_valid;
    wire [31:0] 	lanes_data_out;

    mipi_multi_lane_aligner #(
        .LANES       	( 4  ),
        .ALIGN_DEPTH 	( 5  ))
    u_mipi_multi_lane_aligner(
        .byte_clk             	( byte_clk              ),
        .sys_rst_n            	( sys_rst_n             ),
        .lanes_data_in_valid  	( lanes_data_in_valid   ),
        .lanes_data_in        	( lanes_data_in         ),
        .lanes_data_out_valid 	( lanes_data_out_valid  ),
        .lanes_data_out       	( lanes_data_out        )
    );


    // integer i;

    reg [7:0] send_memory [9:0];
    initial begin
        send_memory[0] = 8'h12; 
        send_memory[1] = 8'h34; 
        send_memory[2] = 8'h56; 
        send_memory[3] = 8'h78; 
        send_memory[4] = 8'h90; 
        send_memory[5] = 8'ha1; 
        send_memory[6] = 8'ha2; 
        send_memory[7] = 8'ha3; 
        send_memory[8] = 8'ha4; 
        send_memory[9] = 8'ha5; 
    end

    always #10 byte_clk = ~byte_clk; // 50MHz

    initial begin 
        sys_rst_n = 1'b0; #20;
        sys_rst_n = 1'b1; #20; 
    end

    initial begin // lane 0
        #40; // for reset
        #20;
        // send data
        lanes_data_in_valid[0] = 1'b1; // lane 0 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[7:0] = send_memory[i]; // lane 0 data
            #20;
        end
        lanes_data_in_valid[0] = 1'b0; // lane 0 valid

        #(200-20);


        lanes_data_in_valid[0] = 1'b1; // lane 0 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[7:0] = send_memory[i]; // lane 0 data
            #20;
        end
        lanes_data_in_valid[0] = 1'b0; // lane 0 valid
    end

    initial begin // lane 1
        #40; // for reset
        #60;
        // send data
        lanes_data_in_valid[1] = 1'b1; // lane 1 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[15:8] = send_memory[i]; // lane 1 data
            #20;
        end
        lanes_data_in_valid[1] = 1'b0; // lane 1 valid

        #(200-60);

        lanes_data_in_valid[1] = 1'b1; // lane 1 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[15:8] = send_memory[i]; // lane 1 data
            #20;
        end
        lanes_data_in_valid[1] = 1'b0; // lane 1 valid
    end

    initial begin // lane 2
        #40; // for reset
        #80;
        lanes_data_in_valid[2] = 1'b1; // lane 2 valid
        // send data
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[23:16] = send_memory[i]; // lane 2 data
            #20;
        end
        lanes_data_in_valid[2] = 1'b0; // lane 2 valid

        #(200-80);

        lanes_data_in_valid[2] = 1'b1; // lane 2 valid
        // send data
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[23:16] = send_memory[i]; // lane 2 data
            #20;
        end
        lanes_data_in_valid[2] = 1'b0; // lane 2 valid
    end

    initial begin // lane 3
        #40; // for reset
        // #0;
        // send data
        lanes_data_in_valid[3] = 1'b1; // lane 3 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[31:24] = send_memory[i]; // lane 3 data
            #20;
        end
        lanes_data_in_valid[3] = 1'b0; // lane 3 valid

        #(200-0);

        lanes_data_in_valid[3] = 1'b1; // lane 3 valid
        for (integer i = 0; i < 10; i = i + 1) begin
            lanes_data_in[31:24] = send_memory[i]; // lane 3 data
            #20;
        end
        lanes_data_in_valid[3] = 1'b0; // lane 3 valid

    end





endmodule




