module mipi_raw_data_controller(
    input sys_clk,
    input sys_rst_n,

    input hs_burst_flag,


    // fifo interface
    input dphy_raw_fifo_Empty,
    input [31:0] dphy_raw_fifo_Q,

    output reg dphy_raw_fifo_RdEn,
    output reg dphy_raw_fifo_Reset,

    // output data
    output reg raw_data_out_valid,
    output reg [15:0] raw_data_out_lane0,
    output reg [15:0] raw_data_out_lane1

);

reg fifo_reading_flag;

wire [31:0] q = dphy_raw_fifo_Q;
wire [15:0] raw_q_lane0 = {q[30], q[28], q[26], q[24], q[22], q[20], q[18], q[16], 
                    q[14], q[12], q[10],  q[8],  q[6],  q[4],  q[2], q[0]};

wire [15:0] raw_q_lane1 = {q[31], q[29], q[27], q[25], q[23], q[21], q[19], q[17], 
                    q[15], q[13], q[11],  q[9],  q[7],  q[5],  q[3], q[1]};

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin

        dphy_raw_fifo_RdEn <= 1'b0;
        dphy_raw_fifo_Reset <= 1'b0;

        raw_data_out_valid <= 1'b0;
        raw_data_out_lane0 <= 16'h0;
        raw_data_out_lane1 <= 16'h0;
    end else begin

        // if not empty en read fifo
        if (!dphy_raw_fifo_Empty) begin // not empty
            dphy_raw_fifo_RdEn <= 1'b1; // start read fifo
        end else begin
            dphy_raw_fifo_RdEn <= 1'b0; // stop reading
        end

        if (dphy_raw_fifo_RdEn) begin
            raw_data_out_valid <= 1'b1;
            raw_data_out_lane0 <= raw_q_lane0;
            raw_data_out_lane1 <= raw_q_lane1;
        end else begin
            raw_data_out_valid <= 1'b0;
            raw_data_out_lane0 <= 16'h0;
            raw_data_out_lane1 <= 16'h0;
        end

        if (hs_burst_flag) begin
            dphy_raw_fifo_Reset <= 1'b0; // no reset
        end else begin
            dphy_raw_fifo_Reset <= 1'b1; // reset fifo
        end

    end
end

endmodule
    

