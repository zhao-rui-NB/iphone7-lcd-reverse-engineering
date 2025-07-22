module mipi_multi_lane_aligner(
    input byte_clk,
    input sys_rst_n,

    input [(LANES-1):0] lanes_data_in_valid, // {lane3_valid, lane2_valid, lane1_valid, lane0_valid}
    input [(LANES*8-1):0] lanes_data_in, //{lane3[7:0], lane2[7:0], lane1[7:0], lane0[7:0]}


    output reg lanes_data_out_valid, // {lane3_valid, lane2_valid, lane1_valid, lane0_valid}
    output reg [(LANES*8-1):0] lanes_data_out, //{lane3[7:0], lane2[7:0], lane1[7:0], lane0[7:0]}
    output reg align_fail // align fail flag
);
/// debub reg
// wire [3:0] lanes_data_in_valid_d0 = lanes_data_in_valid_d[0];
// wire [3:0] lanes_data_in_valid_d1 = lanes_data_in_valid_d[1];
// wire [3:0] lanes_data_in_valid_d2 = lanes_data_in_valid_d[2];
// wire [3:0] lanes_data_in_valid_d3 = lanes_data_in_valid_d[3];
// wire [3:0] lanes_data_in_valid_d4 = lanes_data_in_valid_d[4];
// wire [31:0] lanes_data_in_d0 = lanes_data_in_d[0];
// wire [31:0] lanes_data_in_d1 = lanes_data_in_d[1];
// wire [31:0] lanes_data_in_d2 = lanes_data_in_d[2];
// wire [31:0] lanes_data_in_d3 = lanes_data_in_d[3];
// wire [31:0] lanes_data_in_d4 = lanes_data_in_d[4];
// //start_sync_index_valid
// wire [3:0] start_sync_index_valid0 = start_sync_index_valid[0];
// wire [3:0] start_sync_index_valid1 = start_sync_index_valid[1];
// wire [3:0] start_sync_index_valid2 = start_sync_index_valid[2];
// wire [3:0] start_sync_index_valid3 = start_sync_index_valid[3];
// wire [3:0] start_sync_index0 = start_sync_index[0];
// wire [3:0] start_sync_index1 = start_sync_index[1];
// wire [3:0] start_sync_index2 = start_sync_index[2];
// wire [3:0] start_sync_index3 = start_sync_index[3];
//debug reg end

///
parameter LANES = 4; // number of lanes
parameter ALIGN_DEPTH = 5;

reg [3:0] lanes_data_in_valid_d [0:4];
reg [31:0] lanes_data_in_d [0:4];


integer i,j;

reg start_sync_index_valid[3:0]; // start valid index for each lane
reg [3:0]start_sync_index[3:0]; // start valid index for each lane

// any of start vaild and it index is the max of buffer 
reg fill_ok;
always @ (*) begin
    fill_ok = 1'b0;
    for (i = 0; i < LANES; i = i + 1) begin
        if (start_sync_index_valid[i] && start_sync_index[i] == ALIGN_DEPTH-1) begin
            fill_ok = 1'b1;
        end
    end
end

reg offset_data_valid; // offset data valid for each lane
reg [(LANES*8-1):0]offset_data; // offset data for each lane
reg any_offset_data_valid; // any offset data valid for each lane
always @ (*) begin
    offset_data_valid = 1'b1;
    for (i = 0; i < LANES; i = i + 1) begin
        if (lanes_data_in_valid_d[start_sync_index[i]][i] == 1'b0) begin
            offset_data_valid = 1'b0;
        end
    end

    any_offset_data_valid = 1'b0;
    for (i = 0; i < LANES; i = i + 1) begin
        if (lanes_data_in_valid_d[start_sync_index[i]][i] == 1'b1) begin
            any_offset_data_valid = 1'b1;
        end
    end
end

always @ (*) begin
    for (i = 0; i < LANES; i = i + 1) begin
        if (lanes_data_in_valid_d[start_sync_index[i]][i] == 1'b1) begin
            offset_data[(i+1)*8-1 -: 8] = lanes_data_in_d[start_sync_index[i]][(i+1)*8-1 -: 8];
        end else begin
            offset_data[(i+1)*8-1 -: 8] = 8'h0;
        end
    end
end

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        lanes_data_out_valid <= 1'b0;
        lanes_data_out <= 32'h0;
        for (i = 0; i < LANES; i = i + 1) begin
            start_sync_index_valid[i] <= 1'b0;
            start_sync_index[i] <= 4'h0;
        end
        for (i = 0; i < ALIGN_DEPTH; i = i + 1) begin
            lanes_data_in_valid_d[i] <= 4'b0;
            lanes_data_in_d[i] <= 32'h0;
        end
        align_fail <= 1'b0;
    end else begin
        // store and shift data from index x to x+1
        lanes_data_in_valid_d[0] <= lanes_data_in_valid;
        lanes_data_in_d[0] <= lanes_data_in;
        for (i = 0; i < ALIGN_DEPTH-1; i = i + 1) begin // buffer depth
            lanes_data_in_valid_d[i+1] <= lanes_data_in_valid_d[i];
            lanes_data_in_d[i+1] <= lanes_data_in_d[i];
        end

        if (!fill_ok) begin // valid data not arrive to depth
            for (i = 0; i < LANES; i = i + 1) begin // for each lane
                if (lanes_data_in_valid_d[0][i] == 0 && lanes_data_in_valid[i]) begin // posedge of valid, save the index
                    start_sync_index_valid[i] <= 1'b1; // start sync index valid    
                    start_sync_index[i] <= 0; 
                end else if (lanes_data_in_valid[i]) begin
                    start_sync_index[i] <= start_sync_index[i] + 1; // increase index, because data shift
                end // else data not valid, do nothing
            end
        end else begin // start output the data , data aligned
            if (offset_data_valid && !align_fail) begin // align_fail: head or tail data invalid
                lanes_data_out_valid <= 1'b1; 
                lanes_data_out <= offset_data; // output data
            end else begin
                lanes_data_out_valid <= 1'b0;
                lanes_data_out <= 32'h0;

                if (any_offset_data_valid) begin // wait all vaild finish, than go to reset the aligner
                    align_fail <= 1'b1; // align fail
                end else begin // data input finish, reset the aligner
                    lanes_data_out_valid <= 1'b0;
                    lanes_data_out <= 32'h0;
                    for (i = 0; i < LANES; i = i + 1) begin
                        start_sync_index_valid[i] <= 1'b0;
                        start_sync_index[i] <= 4'h0;
                    end
                    for (i = 0; i < ALIGN_DEPTH; i = i + 1) begin
                        lanes_data_in_valid_d[i] <= 4'b0;
                        lanes_data_in_d[i] <= 32'h0;
                    end
                    align_fail <= 1'b0;
                end
            end
        end
    end
end


endmodule