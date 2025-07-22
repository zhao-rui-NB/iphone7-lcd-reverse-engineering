// 16bit aligner, each 
module mipi_byte_aligner (
    input byte_clk,
    input sys_rst_n,

    input align_rst_n,
    input data_in_valid,
    input [15:0] data_in,

    output reg data_out_valid,
    output reg [15:0] data_out
    
);

// reverse > buffer > offset > reverse back

// lane send lsb first, when it store start from data_in[0] 
// but this data_in byte split wrong
// need align byte by find sync byte

// data input 16bit
// align buffer 32bit
// find sync_byte in offect 0-15

parameter SYNC_BYTE = 16'b00000000_00011101;
parameter SYNC_BYTE_REVERSE = 16'b10111000_00000000; // 0xB800

reg align_rst_n_d;

always @ (posedge byte_clk or negedge sys_rst_n) begin 
    if (!sys_rst_n) begin
        align_rst_n_d <= 1'b0;
    end else begin
        align_rst_n_d <= align_rst_n;
    end
end


reg seq_offect_valid;
reg [3:0] seq_offset;
reg [31:0] data_squence;

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        data_squence <= 32'h0;
    end else if (!align_rst_n_d) begin
        data_squence <= 32'h0;
    end else if (data_in_valid) begin  
        data_squence[31:16] <= data_squence[15:0];
        // 15-0 store reverse data in 
        data_squence[15:0] <= {data_in[0], data_in[1], data_in[2], data_in[3], data_in[4], data_in[5], data_in[6], data_in[7],
                               data_in[8], data_in[9], data_in[10], data_in[11], data_in[12], data_in[13], data_in[14], data_in[15]};
    end
end

reg sync_found;
reg [3:0] found_offect;

always @ (*)begin
    sync_found = 0;
    found_offect = 0;
    // check sync byte (16bit) from data_squence msb(oldest) to lsb(newest)
    if (data_squence[31:16] == SYNC_BYTE) begin  sync_found = 1; found_offect = 0; end
    if (data_squence[30:15] == SYNC_BYTE) begin  sync_found = 1; found_offect = 1; end
    if (data_squence[29:14] == SYNC_BYTE) begin  sync_found = 1; found_offect = 2; end
    if (data_squence[28:13] == SYNC_BYTE) begin  sync_found = 1; found_offect = 3; end
    if (data_squence[27:12] == SYNC_BYTE) begin  sync_found = 1; found_offect = 4; end
    if (data_squence[26:11] == SYNC_BYTE) begin  sync_found = 1; found_offect = 5; end
    if (data_squence[25:10] == SYNC_BYTE) begin  sync_found = 1; found_offect = 6; end
    if (data_squence[24:9] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 7; end
    if (data_squence[23:8] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 8; end
    if (data_squence[22:7] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 9; end
    if (data_squence[21:6] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 10; end
    if (data_squence[20:5] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 11; end
    if (data_squence[19:4] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 12; end
    if (data_squence[18:3] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 13; end
    if (data_squence[17:2] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 14; end
    if (data_squence[16:1] == SYNC_BYTE)  begin  sync_found = 1; found_offect = 15; end
    // else begin sync_found = 0; found_offect = 0; end
end

// >> 16 get all data form old byte, if seq_offset = 0, then get data_squence[31:16]
// if seq_offset = 1, then get data_squence[30:15], 15 bit from old byte , 1 bit from new byte
wire [15:0]os_data = (data_squence >> (16-seq_offset)) & 16'hFFFF; // offset data for output
wire [15:0]new_data_out = {os_data[0], os_data[1], os_data[2], os_data[3], os_data[4], os_data[5], os_data[6], os_data[7], 
                           os_data[8], os_data[9], os_data[10], os_data[11], os_data[12], os_data[13], os_data[14], os_data[15]};

always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        seq_offect_valid <= 1'b0;
        seq_offset <= 4'b0;

        data_out_valid <= 1'b0;
        data_out <= 16'b0;
    end else begin
        if(!align_rst_n_d) begin
            seq_offect_valid <= 1'b0;
            seq_offset <= 4'b0;

            data_out_valid <= 1'b0;
            data_out <= 16'b0;
        end else if (data_in_valid && !seq_offect_valid && sync_found) begin // just find sync byte
            seq_offect_valid <= 1'b1;
            seq_offset <= found_offect;
            // output 
            data_out_valid <= 1'b1;
            data_out <= SYNC_BYTE_REVERSE; // output sync byte, can not use new_data_out, because seq_offset not save yet
        end else if(data_in_valid && seq_offect_valid) begin // sync byte found, and now output data
            data_out_valid <= 1'b1;
            data_out <=  new_data_out;
        end else begin
            data_out_valid <= 1'b0;
            data_out <= 16'b0;
        end
    end
end


endmodule