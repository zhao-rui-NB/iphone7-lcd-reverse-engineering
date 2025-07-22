module mipi_byte_aligner (
    input byte_clk,
    // input hs_burst_flag,
    input sys_rst_n,

    input align_rst_n,
    input [7:0] data_in,

    output reg data_out_valid,
    output reg [7:0] data_out
    
);

// lane send lsb first, when it store start from data_in[0] 
// but this data_in byte split wrong
// need align byte by find sync byte

parameter SYNC_BYTE = 8'b00011101;
parameter SYNC_BYTE_REVERSE = 8'b10111000;

reg align_rst_n_d;

always @ (posedge byte_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) begin
        align_rst_n_d <= 1'b0;
    end else begin
        align_rst_n_d <= align_rst_n;
    end
end


reg seq_offect_valid;
reg [2:0] seq_offset;
reg [15:0] data_squence;

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        data_squence <= 16'h0;
    end else if (!align_rst_n_d) begin
        data_squence <= 16'h0;
    end else begin  
        data_squence[15:8] <= data_squence[7:0];
        // 7-0 store reverse data in 
        data_squence[7:0] <= {data_in[0], data_in[1], data_in[2], data_in[3], data_in[4], data_in[5], data_in[6], data_in[7]};
    end
end

reg sync_found;
reg [2:0] found_offect;

always @ (*)begin
    if (data_squence[15:8] == SYNC_BYTE) begin sync_found = 1; found_offect = 0; end
    else if (data_squence[14:7] == SYNC_BYTE) begin sync_found = 1; found_offect = 1; end
    else if (data_squence[13:6] == SYNC_BYTE) begin sync_found = 1; found_offect = 2; end
    else if (data_squence[12:5] == SYNC_BYTE) begin sync_found = 1; found_offect = 3; end
    else if (data_squence[11:4] == SYNC_BYTE) begin sync_found = 1; found_offect = 4; end
    else if (data_squence[10:3] == SYNC_BYTE) begin sync_found = 1; found_offect = 5; end
    else if (data_squence[9:2] == SYNC_BYTE) begin sync_found = 1; found_offect = 6; end
    else if (data_squence[8:1] == SYNC_BYTE) begin sync_found = 1; found_offect = 7; end
    else begin sync_found = 0; found_offect = 0; end
end

wire [7:0]os_data = (data_squence >> (8-seq_offset)) & 8'hFF; // get offset data for output
wire [7:0]new_data_out = {os_data[0], os_data[1], os_data[2], os_data[3], os_data[4], os_data[5], os_data[6], os_data[7]};

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        seq_offect_valid <= 1'b0;
        seq_offset <= 3'b0;

        data_out_valid <= 1'b0;
        data_out <= 8'b0;
    end else begin
        if(!align_rst_n_d) begin
            seq_offect_valid <= 1'b0;
            seq_offset <= 3'b0;

            data_out_valid <= 1'b0;
            data_out <= 8'b0;
        end else if (!seq_offect_valid && sync_found) begin // just find sync byte
            seq_offect_valid <= 1'b1;
            seq_offset <= found_offect;
            // output 
            data_out_valid <= 1'b1;
            data_out <= SYNC_BYTE_REVERSE; // output sync byte, can not use new_data_out, because seq_offset not save yet
        end else if(seq_offect_valid) begin // sync byte found, and now output data
            data_out_valid <= 1'b1;
            data_out <=  new_data_out;
        end else begin
            data_out_valid <= 1'b0;
            data_out <= 8'b0;
        end
    end
end


endmodule