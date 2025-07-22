module data_storage_controller(
    input clk_i,
    input byte_clk,
    input memory_clk,
    input sys_clk,
    output memory_clk_div2_o,
    
    input pll_lock,
    input sys_rst_n,

    // lane data
    input data_in_valid,
    input [31:0] data_in,

    // psram

    output [1:0] O_psram_ck,
    output [1:0] O_psram_ck_n,
    inout [15:0] IO_psram_dq,
    inout [1:0] IO_psram_rwds,
    output [1:0] O_psram_cs_n,
    output [1:0] O_psram_reset_n,

    // ctrl 
    input cmd_record,

    input cmd_read_request,
    input [20:0]read_request_addr,

    output reg [(64*PSRAM_BURST_DATA_SIZE)-1:0] read_data_out,
    output reg read_data_valid,

    output reg done,
    output ready,
    output wire psram_init_done,

    // memory port 
    output  [7:0] memory_data_count_o,
    input [7:0] memory_data_index_i,
    output  [39:0] start_time_memory_o,
    output  [31:0] length_memory_o

);


// u_mipi_multi_lane_aligner(
//     .byte_clk             	( clk_byte_out              ),
//     .sys_rst_n            	( sys_rst_n             ),
//     .lanes_data_in_valid  	( aligned_data_valid_lane0   ),
//     .lanes_data_in        	( aligned_data_lane0         ),
//     .lanes_data_out_valid 	( lanes_data_out_valid  ),
//     .lanes_data_out       	( lanes_data_out        ),
//     .align_fail           	( align_fail            )
// );

// fifo write 32b , read 64b
// psram burst in and out 64b * 16 clks(add 16 addr)
parameter PSRAM_BURST_DATA_SIZE = 16; // psram burst size
parameter PSRAM_BURST_TCMD = 26; // add 10 clk after data  


localparam IDLE = 4'd0;
localparam STATE_RECORD = 4'd1;
localparam STATE_RECORD_BURST = 4'd2;
localparam STATE_READ = 4'd3;
localparam STATE_READ_RECEIVE = 4'd4;


wire fifo_reset; // high active
wire fifo_write_en;
reg fifo_read_en;
wire [63:0]fifo_read_data;
wire fifo_empty;
wire fifo_full;
wire [5:0] fifo_read_data_count;

// // psram
reg psram_cmd;
reg psram_cmd_en;
reg [20:0] psram_addr;
reg [63:0] psram_write_data;
wire[63:0] psram_read_data;
wire psram_read_data_valid;
wire psram_init_calib;

assign psram_init_done = psram_init_calib; // psram init done flag


FIFO_HS_LANE_TO_PSRAM_Top fifo_hs_lane_to_psram_inst(
    .Data(data_in), //input [31:0] Data
    .Reset(fifo_reset), //input Reset
    .WrClk(byte_clk), //input WrClk
    .RdClk(sys_clk), //input RdClk
    .WrEn(fifo_write_en), //input WrEn
    .RdEn(fifo_read_en), //input RdEn
    .Rnum(fifo_read_data_count), //output [5:0] Rnum
    .Q(fifo_read_data), //output [63:0] Q
    .Empty(fifo_empty), //output Empty
    .Full(fifo_full) //output Full
);

PSRAM_Memory_Interface_HS_Top psram_memory_interface_inst(
    .clk(clk_i), //input clk
    .memory_clk(memory_clk), //input memory_clk
    .pll_lock(pll_lock), //input pll_lock
    .rst_n(sys_rst_n), //input rst_n
    .O_psram_ck(O_psram_ck), //output [1:0] O_psram_ck
    .O_psram_ck_n(O_psram_ck_n), //output [1:0] O_psram_ck_n
    .IO_psram_dq(IO_psram_dq), //inout [15:0] IO_psram_dq
    .IO_psram_rwds(IO_psram_rwds), //inout [1:0] IO_psram_rwds
    .O_psram_cs_n(O_psram_cs_n), //output [1:0] O_psram_cs_n
    .O_psram_reset_n(O_psram_reset_n), //output [1:0] O_psram_reset_n
    
    .wr_data(psram_write_data), //input [63:0] wr_data
    .rd_data(psram_read_data), //output [63:0] rd_data
    .rd_data_valid(psram_read_data_valid), //output rd_data_valid
    .addr(psram_addr), //input [20:0] addr
    .cmd(psram_cmd), //input cmd
    .cmd_en(psram_cmd_en), //input cmd_en
    .init_calib(psram_init_calib), //output init_calib
    .clk_out(memory_clk_div2_o), //output clk_out
    .data_mask(8'b0) //input [7:0] data_mask
);

// ///////////////////////////////////////////////////////////////////////////////////////////////
// @ MIPI LANE CLK DOMAIN
// ///////////////////////////////////////////////////////////////////////////////////////////////

reg [31:0] data_in_len_counter;
reg [31:0] data_in_len_counter_record;

// trigger for record data
// sync the fifo_save_data_flag to byte_clk domain
reg fifo_save_data_flag_d0;
reg fifo_save_data_flag_d1;
reg fifo_save_data_flag_d2;
wire posedge_fifo_save_data_flag = (fifo_save_data_flag_d2 == 1'b0 && fifo_save_data_flag_d1 == 1'b1) ? 1'b1 : 1'b0; // posedge of fifo_save_data_flag

reg last_data_in_valid;
reg fifo_write_en_triggered;

assign posedge_data_in_valid = (last_data_in_valid == 1'b0 && data_in_valid == 1'b1) ? 1'b1 : 1'b0; // posedge of data_in_valid
assign fifo_reset = !fifo_save_data_flag_d2; // reset fifo when fifo_save_data_flag is low
assign fifo_write_en = (posedge_data_in_valid || fifo_write_en_triggered) && data_in_valid;

// 計算單次data valid的長度, 結束時存進data_in_len_counter_record
always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        data_in_len_counter <= 0;
        data_in_len_counter_record <= 0;
    end else begin
        if (data_in_valid) begin
            data_in_len_counter <= data_in_len_counter + 1'b1;
        end else begin
            data_in_len_counter_record <= data_in_len_counter; // record the data length
            data_in_len_counter <= 0;
        end
    end
end

// sync sys_clk to byte_clk domain
always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        fifo_save_data_flag_d0 <= 1'b0;
        fifo_save_data_flag_d1 <= 1'b0;
        fifo_save_data_flag_d2 <= 1'b0;

        last_data_in_valid <= 1'b0;
    end else begin
        fifo_save_data_flag_d0 <= fifo_save_data_flag;
        fifo_save_data_flag_d1 <= fifo_save_data_flag_d0;
        fifo_save_data_flag_d2 <= fifo_save_data_flag_d1;
    
        last_data_in_valid <= data_in_valid;
    end
end

// data_in_valid
// 當 fifo_save_data_flag_d2 延遲等待 posedge_data_in_valid 時, 觸發 fifo_write_en_triggered
always @ (posedge byte_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        fifo_write_en_triggered <= 1'b0;
    end else begin
        if (!fifo_save_data_flag_d2) begin // reset when save data finish
            fifo_write_en_triggered <= 1'b0;
        end else if (posedge_data_in_valid) begin // trigger when start save data and posedge of data vaild 
            fifo_write_en_triggered <= 1'b1; 
        end
    end
end

// ///////////////////////////////////////////////////////////////////////////////////////////////
// @ SYS CLK  CLK DOMAIN
// ///////////////////////////////////////////////////////////////////////////////////////////////
integer i;

// sync data_in_valid into sys_clk domain
reg data_in_valid_d0;
reg data_in_valid_d1;
reg data_in_valid_d2;
reg data_in_valid_d3;

// system time
reg system_time_reset;
reg [39:0] sys_time_counter; 
reg [39:0] start_valid_time; // 40 bit for time 

reg [7:0] psram_ready_counter;

//memory
reg [7:0] memory_data_count;
reg [39:0] start_time_memory [0:31];
reg [31:0] length_memory [0:31];

reg record_time_full;
// control signal
reg cmd_record_time_clear;
reg cmd_record_time;

reg [3:0] state;
reg [7:0] write_counter;
reg [20:0]read_request_addr_d0;
reg [7:0]receive_counter;
reg fifo_save_data_flag; // trigger for the byte_clk domain to save data

assign memory_data_count_o = memory_data_count; // output data count
assign start_time_memory_o = start_time_memory[memory_data_index_i]; // output start time
assign length_memory_o = length_memory[memory_data_index_i]; // output data length

wire psram_ready_flag = (psram_ready_counter == 0) && !psram_cmd_en && psram_init_calib; // psram ready flag
assign fifo_read_clk = sys_clk;
assign ready = (state == IDLE ? 1'b1 : 1'b0) && psram_ready_flag; // ready flag

// sync data_in_valid to sys_clk domain
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        data_in_valid_d0 <= 1'b0;
        data_in_valid_d1 <= 1'b0;
        data_in_valid_d2 <= 1'b0;
        data_in_valid_d3 <= 1'b0;
    end else begin
        data_in_valid_d0 <= data_in_valid;
        data_in_valid_d1 <= data_in_valid_d0;
        data_in_valid_d2 <= data_in_valid_d1;
        data_in_valid_d3 <= data_in_valid_d2;
    end
end

// system time counter
always @ (posedge sys_clk or negedge sys_rst_n)begin
    if (!sys_rst_n) begin
        sys_time_counter <= 0;
    end else begin
        if (system_time_reset) begin
            sys_time_counter <= 0;
        end else begin
            sys_time_counter <= sys_time_counter + 1'b1;
        end
    end
end

// timestamp and data count
// 5 byte for time, 4 byte for data len 
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        system_time_reset <= 1'b0;

        memory_data_count <= 0;
        for (i = 0; i < 32; i = i + 1) begin
            start_time_memory[i] <= 0;
            length_memory[i] <= 0;
        end

        record_time_full <= 1'b0;
        start_valid_time <= 0;
    end else begin
        if(cmd_record_time_clear) begin
            system_time_reset <= 1'b0; // reset time counter
            record_time_full <= 1'b0; // reset record time full flag
            
            memory_data_count <= 0;
            for (i = 0; i < 32; i = i + 1) begin
                start_time_memory[i] <= 0;
                length_memory[i] <= 0;
            end
        end else if (cmd_record_time) begin
            system_time_reset <= 1'b1; // release time counter reset

            if (data_in_valid_d3==1'b0 && data_in_valid_d2==1'b1) begin // posedge of data_in_valid
                // save start valid time
                start_valid_time <= sys_time_counter; // 40 bit for time
            end else if (data_in_valid_d3==1'b1 && data_in_valid_d2==1'b0 && !record_time_full) begin // negedge of data_in_valid
                // save data length and start valid time
                memory_data_count <= memory_data_count + 1'b1; // increment data count
                start_time_memory[memory_data_count] <= start_valid_time; // save start valid time
                length_memory[memory_data_count] <= data_in_len_counter_record; // save data length
                if (memory_data_count == 31) begin
                    record_time_full <= 1'b1; // set record time full flag
                end else begin
                    record_time_full <= 1'b0; // reset record time full flag
                end
            end
        end
    end
end

// psram ready counter, count the Tcmd (clk delay between two psram command)
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        psram_ready_counter <= 0;
    end else begin
        if (psram_cmd_en) begin // psram cmd en, start to count to Tcmd 
            psram_ready_counter <= PSRAM_BURST_TCMD-1; // set counter to Tcmd-2
        end else if (psram_ready_counter > 0) begin // psram cmd en, start to count to Tcmd 
            psram_ready_counter <= psram_ready_counter - 1'b1; // decrement counter
        end else begin
            psram_ready_counter <= 0; // reset counter
        end
    end
end

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= IDLE; // reset state
        
        fifo_save_data_flag <= 1'b0;
        fifo_read_en <= 1'b0;
        
        psram_cmd <= 1'b0;
        psram_cmd_en <= 1'b0;
        psram_addr <= 0;
        psram_write_data <= 0;
        
        write_counter <= 0;
        
        read_request_addr_d0 <= 0;
        receive_counter <= 0;
        read_data_valid <= 1'b0;
        read_data_out <= 0;

        // time stamp data count
        cmd_record_time_clear <= 1'b0; 
        cmd_record_time <= 1'b0;

        done <= 1'b0; // reset done flag    

    end else begin 
        case (state)
            IDLE: begin
                done <= 1'b0; // reset done flag
                cmd_record_time <= 1'b0;
                if (cmd_record && psram_ready_flag) begin
                    fifo_save_data_flag <= 1'b1;
                    psram_addr <= 0;
                    write_counter <= 0;
                    cmd_record_time_clear <= 1'b1; 
                    state <= STATE_RECORD;
                end else if (cmd_read_request && psram_ready_flag) begin
                    read_request_addr_d0 <= read_request_addr;
                    read_data_valid <= 1'b0;
                    receive_counter <= 0;
                    state <= STATE_READ;
                end else begin
                    state <= IDLE;
                end
            end

            STATE_RECORD: begin
                cmd_record_time_clear <= 1'b0; 

                if(fifo_read_data_count >= 16) begin // wait for fifo enough data
                    // read byte form fifo 
                    state <= STATE_RECORD_BURST;
                    fifo_read_en <= 1'b1;
                end
            end

            STATE_RECORD_BURST: begin
                psram_cmd_en <= 1'b1 ? (write_counter == 0) : 1'b0; // enable command
                psram_cmd <= 1'b1 ? (write_counter == 0) : 1'b0; // write command
                write_counter <= write_counter + 1'b1; // increment write counter
                psram_write_data <= (write_counter < PSRAM_BURST_DATA_SIZE) ? fifo_read_data : 0; // read data from fifo

                if(write_counter == PSRAM_BURST_DATA_SIZE-1) begin // least data
                    fifo_read_en <= 1'b0; // disable read from fifo
                end else if (write_counter == PSRAM_BURST_DATA_SIZE) begin
                    // check all psram data is written or not
                    write_counter <= 0;
                    if ( (psram_addr + PSRAM_BURST_DATA_SIZE*2) < 2**21) begin
                    // if ( (psram_addr + PSRAM_BURST_DATA_SIZE*2) < 128) begin
                        psram_addr <= psram_addr + PSRAM_BURST_DATA_SIZE*2; // 1 burst address + 2, 2*16 = 32 byte
                        state <= STATE_RECORD;
                    end else begin // data is recorded successfully
                        done <= 1'b1; // set done flag
                        state <= IDLE;
                    end
                end
            end

            STATE_READ: begin
                psram_cmd_en <= 1'b1; // enable command
                psram_cmd <= 1'b0; // read command
                psram_addr <= read_request_addr_d0; // set psram addr to read request addr
            
                state <= STATE_READ_RECEIVE;
            end


            STATE_READ_RECEIVE: begin
                psram_cmd_en <= 1'b0; // disable command
                psram_cmd <= 1'b0; // read command
                if (psram_read_data_valid) begin
                    // burst is 16 of 64b data. shift in data form read_data_out msb to lsb
                    // output reg [(8*PSRAM_BURST_DATA_SIZE)-1:0] read_data_out,
                    read_data_out <= {psram_read_data, read_data_out[(64*PSRAM_BURST_DATA_SIZE)-1:64]}; // shift in data
                    receive_counter <= receive_counter + 1'b1; // increment receive counter

                    if (receive_counter == PSRAM_BURST_DATA_SIZE-1) begin
                        read_data_valid <= 1'b1; 
                        state <= IDLE;
                        done <= 1'b1;
                    end
                end
            end
        endcase            
    end
end






endmodule 


