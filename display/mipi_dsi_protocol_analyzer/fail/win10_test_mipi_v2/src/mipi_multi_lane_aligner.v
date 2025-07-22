module mipi_multi_lane_aligner(
    input byte_clk,
    input sys_rst_n,

    input align_rst_n, // align reset signal, when reset, all fifo will be clear

    input [(LANES-1):0] lanes_data_in_valid, // {lane3_valid, lane2_valid, lane1_valid, lane0_valid}
    input [(LANES*16-1):0] lanes_data_in, //{lane3[7:0], lane2[7:0], lane1[7:0], lane0[7:0]}


    output reg lanes_data_out_valid,
    output reg [(LANES*16-1):0] lanes_data_out, //{lane3[7:0], lane2[7:0], lane1[7:0], lane0[7:0]}
    output reg align_error // align fail flag
);

parameter LANES = 2; // number of lanes
parameter ALIGN_DEPTH = 5;


integer lane;
integer i,j;


// ring buffer * lanes
// 16bit memory [row=lanes] [col=ALIGN_DEPTH]
reg [15:0] fifo_memory[0:LANES-1][0:ALIGN_DEPTH-1]; // fifo memory for lanes data
reg [3:0] fifo_rd_ptr[0:LANES-1]; // fifo read pointer for each lane
reg [3:0] fifo_wr_ptr[0:LANES-1]; // fifo write pointer for each lane
reg [3:0] fifo_count[0:LANES-1]; // fifo count for each lane

// full and empty flag for each lane
reg [LANES-1:0]fifo_full; // fifo full flag for each lane
reg [LANES-1:0]fifo_empty; // fifo empty flag for each lane

always @ (*) begin
    for (lane = 0; lane < LANES; lane = lane + 1) begin
        fifo_full[lane] = (fifo_count[lane] == ALIGN_DEPTH);
        fifo_empty[lane] = (fifo_count[lane] == 0);
    end
end

reg [LANES-1:0]need_write; // need write data flag, that lane data valid and fifo not full
reg need_read; // need read data flag, all fifo not empty

always @ (*) begin
    for (lane = 0; lane < LANES; lane = lane + 1) begin
        if (lanes_data_in_valid[lane] && !fifo_full[lane]) begin // data valid and fifo not full
            need_write[lane] = 1'b1;
        end else begin // data not valid or fifo full
            need_write[lane] = 1'b0;
        end
    end

    need_read = 1'b1; // need read data if all fifo have data
    for (lane = 0; lane < LANES; lane = lane + 1) begin
        if (fifo_empty[lane]) begin // if any fifo is empty, not need read
            need_read = 1'b0;
        end
    end
end

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        for (lane = 0; lane < LANES; lane = lane + 1) begin
            fifo_rd_ptr[lane] <= 4'h0; // reset read pointer
            fifo_wr_ptr[lane] <= 4'h0; // reset write pointer
            fifo_count[lane] <= 4'h0; // reset count
        end
        lanes_data_out_valid <= 1'b0; // reset output valid
        lanes_data_out <= 0; // reset output data
        align_error <= 1'b0; // reset align error flag


    end else if (!align_rst_n) begin
        for (lane = 0; lane < LANES; lane = lane + 1) begin
            fifo_rd_ptr[lane] <= 4'h0; // reset read pointer
            fifo_wr_ptr[lane] <= 4'h0; // reset write pointer
            fifo_count[lane] <= 4'h0; // reset count
        end
        lanes_data_out_valid <= 1'b0; // reset output valid
        lanes_data_out <= 0; // reset output data
        align_error <= 1'b0; // reset align error flag

    end else begin
        lanes_data_out_valid <= (need_read) ? 1'b1 : 1'b0; // if need read data, output valid

        for (lane = 0; lane < LANES; lane = lane + 1) begin
            // need write: (lanes_data_in_valid[lane] && !fifo_full[lane])
            // need read: all (!lanes_data_in_valid[lane] && !fifo_empty[lane])
            if (need_write[lane]) begin // data valid and fifo not full
                fifo_memory[lane][fifo_wr_ptr[lane]] <= lanes_data_in[(lane+1)*16-1 -: 16]; // write data to fifo memory
                fifo_wr_ptr[lane] <= (fifo_wr_ptr[lane] < ALIGN_DEPTH-1) ? fifo_wr_ptr[lane] + 1 : 0; // increase write pointer, wrap around
            end

            if (need_read) begin // need read data
                lanes_data_out[(lane+1)*16-1 -: 16] <= fifo_memory[lane][fifo_rd_ptr[lane]]; // read data from fifo memory
                fifo_rd_ptr[lane] <= (fifo_rd_ptr[lane] < ALIGN_DEPTH-1) ? fifo_rd_ptr[lane] + 1 : 0; // increase read pointer, wrap around
            end

            // write only : count + 1
            // read only : count - 1
            // write and read : count = count 

            if (need_write[lane] && !need_read) begin // data valid and fifo not full, write data
                fifo_count[lane] <= fifo_count[lane] + 1;
            end else if (!need_write[lane] && need_read) begin // data not valid or fifo full, read data
                fifo_count[lane] <= fifo_count[lane] - 1;
            end  

        end            
    end
end



endmodule