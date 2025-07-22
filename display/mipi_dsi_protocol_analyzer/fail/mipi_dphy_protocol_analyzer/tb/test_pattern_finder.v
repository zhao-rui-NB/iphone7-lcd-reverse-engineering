// module pattern_finder #(
//     parameter N = 16,                    // 序列長度
//     parameter PATTERN_LEN = 4,
//     parameter [PATTERN_LEN-1:0] PATTERN = 4'b1011
// )(
//     input  wire [N-1:0] data,
//     output wire        found
// );

//     integer i;
//     reg match;

//     always @(*) begin
//         match = 1'b0;
//         for (i = 0; i <= N - PATTERN_LEN; i = i + 1) begin
//             if (data[i +: PATTERN_LEN] == PATTERN)
//                 match = 1'b1;
//         end
//     end

//     assign found = match;

// endmodule



module encoder( // 16 to 4 encoder
    input [15:0] data_in,
    output reg [3:0] data_out
);

always @ (*) begin


    if (data_in[0])
        data_out = 4'd0;
    if (data_in[1])
        data_out = 4'd1;
    if (data_in[2])
        data_out = 4'd2;
    if (data_in[3])
        data_out = 4'd3;
    if (data_in[4])
        data_out = 4'd4;
    if (data_in[5])
        data_out = 4'd5;
    if (data_in[6])
        data_out = 4'd6;
    if (data_in[7])
        data_out = 4'd7;
    if (data_in[8])
        data_out = 4'd8;
    if (data_in[9])
        data_out = 4'd9;
    if (data_in[10])
        data_out = 4'd10;
    if (data_in[11])
        data_out = 4'd11;
    if (data_in[12])
        data_out = 4'd12;
    if (data_in[13])
        data_out = 4'd13;
    if (data_in[14])
        data_out = 4'd14;
    if (data_in[15])
        data_out = 4'd15;
    // else
    //     data_out = 4'b1111; // invalid input

end

endmodule


module test_pattern_finder();

    initial begin
		$dumpfile("build/test_pattern_finder.vcd");  // 設定 VCD 文件名稱
     	$dumpvars(0, test_pattern_finder);     // 記錄所有信號變化，0代表最頂層
        #1_0_000;
   		$finish;
   	end   

    reg [15:0]input_data = 0;
    wire [3:0]data_out;

    initial begin



        input_data = 16'b0000_0000_0000_0001; #10;
        input_data = 16'b0000_0000_0000_0010; #10;
        input_data = 16'b0000_0000_0000_0100; #10;
        input_data = 16'b0000_0000_0000_1000; #10;
        input_data = 16'b0000_0000_0001_0000; #10;
        input_data = 16'b0000_0000_0010_0000; #10;
        input_data = 16'b0000_0000_0100_0000; #10;
        input_data = 16'b0000_0001_0000_0000; #10;


        input_data = 16'b0000_1111_0000_1001; #10;
        input_data = 16'b0000_1111_0000_1010; #10;
        input_data = 16'b0000_1111_0000_1100; #10;
        input_data = 16'b0000_1111_0000_1000; #10;
        input_data = 16'b0000_1111_0001_1000; #10;
        input_data = 16'b0000_1111_0010_1000; #10;
        input_data = 16'b0000_1111_0100_1000; #10;
        input_data = 16'b0000_1111_0000_1000; #10;


    end

    
    encoder u_encoder(
        .data_in  	(input_data),
        .data_out 	(data_out)
    );
    
	





endmodule




