module uart_protocol_processor(
    input wire sys_clk,
    input wire sys_rst_n,

    input wire rx,
    output wire tx,
    output reg protocol_error,

    // data_storage_controller
    output reg cmd_record,
    output reg cmd_read_request,
    output reg [20:0] read_request_addr,
    input wire [(64*16)-1:0] read_data_out,
    input read_data_valid,

    input data_storage_done,
    input data_storage_ready
);


wire       	rx_data_valid;
wire [7:0] 	rx_data;

wire       	tx_busy;
reg        	tx_en;
reg [7:0]  	tx_data;

uart_rx u_uart_rx(
	.sys_clk       	( sys_clk        ),
	.sys_rst_n     	( sys_rst_n      ),
	.rx            	( rx             ),
	.rx_data_valid 	( rx_data_valid  ),
	.rx_data       	( rx_data        )
);

uart_tx u_uart_tx(
	.sys_clk   	( sys_clk    ),
	.sys_rst_n 	( sys_rst_n  ),
	.tx        	( tx         ),
	.tx_en     	( tx_en      ),
	.tx_data   	( tx_data    ),
	.tx_busy   	( tx_busy    )
);


/*
packet format:
    1. headers: 0x55, 0xAA
    2. length: 2 bytes (Big Endian)
    3. command/response: 1 byte
    4. data: (length bytes)
    5. checksum: 1 byte (1's complement of the sum of length, command/response, and data bytes)
    6. end: 0x0A

    1. 2
    2. 2
    3. 1
    4. N
    5. 1
    6. 1 
*/

// localparam STATE_IDLE = 0;
localparam STATE_RECV_HEADER1_IDLE = 1;
localparam STATE_RECV_HEADER2 = 2;
localparam STATE_RECV_LENGTH1 = 3; 
localparam STATE_RECV_LENGTH2 = 4;
localparam STATE_RECV_COMMAND = 5;
localparam STATE_RECV_DATA = 6;
localparam STATE_RECV_CHECKSUM = 7;
localparam STATE_RECV_FOOTER = 8;
localparam STATE_WAIT_PROCESS = 9;



localparam STATE_RECV_END = 10;
localparam STATE_RECV_ERROR = 11;
localparam STATE_RECV_TIMEOUT = 12;

localparam TIMEOUT_VALUE = 250000; // 1 second timeout
localparam TIMEOUT_WIDTH = $clog2(TIMEOUT_VALUE);


localparam FRAME_HEADER1 = 8'hAA;
localparam FRAME_HEADER2 = 8'h55;
localparam FRAME_FOOTER = 8'h0D;

reg [3:0] state;
// reg time counter 
reg [TIMEOUT_WIDTH-1:0] timeout_counter;
reg timeout_flag;

reg [15:0] recv_header;
reg [15:0] recv_length;
reg [7:0] recv_command;
reg [7:0] recv_checksum;
reg [7:0] recv_data [0:255]; // max length is 256 bytes

reg [7:0] recv_data_index;
reg [7:0] checksum_calc;

reg package_received_flag;

reg package_process_done;

// reg [(64*16)-1:0] psram_read_data;

// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// RX processor 
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= STATE_RECV_HEADER1_IDLE;
        package_received_flag <= 1'b0;
        protocol_error <= 1'b0;
        
    end else begin
        package_received_flag <= 1'b0;
        protocol_error <= 1'b0;

        // timeout_counter <= (timeout_counter < TIMEOUT_VALUE) ? timeout_counter + 1 : TIMEOUT_VALUE;

        if(rx_data_valid) begin
            timeout_counter <= 0; // reset timeout counter
        end else if (timeout_counter < TIMEOUT_VALUE) begin
            timeout_counter <= timeout_counter + 1;
        end

        case (state)
            STATE_RECV_HEADER1_IDLE: begin // idle state
                protocol_error <= 1'b0;
                checksum_calc <= 0; // reset checksum
                recv_data_index <= 0; // reset data index
                if (rx_data_valid) begin
                    if (rx_data == FRAME_HEADER1) begin // check header
                        // checksum_calc <= 0; // reset checksum
                        // recv_data_index <= 0; // reset data index
                        state <= STATE_RECV_HEADER2;
                    end 
                end
            end

            STATE_RECV_HEADER2: begin
                if (rx_data_valid) begin
                    if (rx_data == FRAME_HEADER2) begin // check header

                        state <= STATE_RECV_LENGTH1;
                    end else begin
                        state <= STATE_RECV_ERROR; // error
                    end
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end

            STATE_RECV_LENGTH1: begin
                if (rx_data_valid) begin
                    recv_length[15:8] <= rx_data; // get length low byte
                    checksum_calc <= checksum_calc + rx_data; // update checksum
                    state <= STATE_RECV_LENGTH2;
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end


            STATE_RECV_LENGTH2: begin
                if (rx_data_valid) begin
                    recv_length[7:0] <= rx_data; // get length low byte
                    checksum_calc <= checksum_calc + rx_data; // update checksum
                    state <= STATE_RECV_COMMAND;
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end

            STATE_RECV_COMMAND: begin
                if (rx_data_valid) begin
                    recv_command <= rx_data; // get command
                    checksum_calc <= checksum_calc + rx_data; // update checksum

                    if(recv_length > 0) begin
                        state <= STATE_RECV_DATA;
                    end else begin
                        state <= STATE_RECV_CHECKSUM; // no data, go to checksum state
                    end
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end

            STATE_RECV_DATA: begin
                if (rx_data_valid) begin
                    recv_data[recv_data_index] <= rx_data; // get data
                    checksum_calc <= checksum_calc + rx_data; // update checksum

                    if(recv_data_index < recv_length - 1) begin
                        recv_data_index <= recv_data_index + 1; // increment data index
                    end else begin
                        state <= STATE_RECV_CHECKSUM; // all data received, go to checksum state
                    end
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end

            STATE_RECV_CHECKSUM: begin
                if (rx_data_valid) begin
                    if (rx_data == ~checksum_calc) begin // check checksum
                        state <= STATE_RECV_FOOTER; // checksum ok, go to end state
                    end else begin
                        state <= STATE_RECV_ERROR; // checksum error
                    end
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end

            STATE_RECV_FOOTER: begin
                if (rx_data_valid) begin
                    if (rx_data == FRAME_FOOTER) begin // check end
                        package_received_flag <= 1'b1; // package received
                        state <= STATE_WAIT_PROCESS;
                    end else begin
                        state <= STATE_RECV_ERROR; // error
                    end
                end else if (timeout_counter == TIMEOUT_VALUE) begin
                    state <= STATE_RECV_TIMEOUT; // timeout
                end
            end


            STATE_WAIT_PROCESS: begin
                // process command here
                // send response
                if (package_process_done) begin
                    state <= STATE_RECV_HEADER1_IDLE; // go back to idle state
                end
            end


            STATE_RECV_ERROR: begin
                // handle error here
                // reset state to idle or do something else
                protocol_error <= 1'b1; // set error flag
                state <= STATE_RECV_HEADER1_IDLE;
            end


            STATE_RECV_TIMEOUT : begin
                // handle timeout here
                // reset state to idle or do something else
                protocol_error <= 1'b1; // set error flag
                state <= STATE_RECV_HEADER1_IDLE;
            end

        // localparam STATE_IDLE = 0;
        // localparam STATE_RECV_HEADER1 = 1;
        // localparam STATE_RECV_HEADER2 = 2;
        // localparam STATE_RECV_LENGTH1 = 3; 
        // localparam STATE_RECV_LENGTH2 = 4;
        // localparam STATE_RECV_COMMAND = 5;
        // localparam STATE_RECV_DATA = 6;
        // localparam STATE_RECV_CHECKSUM = 7;

        endcase
    end
end


// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// TX processor (process command and send response)
// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

reg [3:0] process_state;
reg [15:0] tx_byte_count;
reg [7:0] tx_checksum;
reg [15:0] tx_length;

reg command_send_flag;

localparam REPLY_OK = 8'h80;
localparam REPLY_BUSY = 8'h81;


localparam CMD_GET_IS_READY = 8'h00; // get ready command
localparam CMD_LOOPBACK = 8'h01;
localparam CMD_READ_PSRAM = 8'h02; // read psram command
localparam CMD_START_RECORD = 8'h03; // start record command


// status
localparam STATE_PROCESS_IDLE = 0;
localparam STATE_LOOPBACK = 1;
localparam STATE_READ_PSRAM = 2;
localparam STATE_READ_PSRAM_WAIT = 3;
localparam STATE_READ_PSRAM_SEND = 4;
localparam STATE_READ_PSRAM_DONE = 5;
localparam STATE_READ_PSRAM_ERROR = 6;

localparam STATE_START_RECORD = 7;
localparam STATE_START_RECORD_REPLY = 8;


localparam STATE_GET_IS_READY = 9;
localparam STATE_SEND_EMPTY_READY_RESPONSE = 10;
localparam STATE_SEND_EMPTY_BUSY_RESPONSE = 11;






always @ (posedge sys_clk or negedge sys_rst_n) begin

    if (!sys_rst_n) begin
        tx_en <= 1'b0; // disable tx
        tx_data <= 0; // reset tx data
        tx_byte_count <= 0;
        tx_checksum <= 0; // reset tx checksum
        package_process_done <= 1'b0;
        process_state <= STATE_PROCESS_IDLE; // reset process state

        cmd_read_request <= 1'b0; // disable read request command
        cmd_record <= 1'b0; // disable record command
        read_request_addr <= 0; // reset read request address
                
    end else begin


        case(process_state)
            STATE_PROCESS_IDLE : begin
                tx_en <= 1'b0; // disable tx
                tx_checksum <= 0;
                tx_byte_count <= 0;
                cmd_read_request <= 1'b0; // disable read request command
                cmd_record <= 1'b0; // disable record command
                read_request_addr <= 0; // reset read request address        
                package_process_done <= 1'b0; // reset package process done flag

                command_send_flag <= 1'b0; // reset waiting flag
                if (package_received_flag) begin
                    if (recv_command == CMD_LOOPBACK) begin // test connect command
                        tx_length <= recv_length; // set tx length to recv length
                        process_state <= STATE_LOOPBACK;
                    end else if (recv_command == CMD_READ_PSRAM) begin // read psram command
                        process_state <= STATE_READ_PSRAM;
                    end else if (recv_command == CMD_START_RECORD) begin
                        process_state <= STATE_START_RECORD;
                    end else begin
                        process_state <= STATE_PROCESS_IDLE; // unknown command, go back to idle state
                    end
                end
            end

            STATE_GET_IS_READY: begin
                if (data_storage_ready) begin
                    process_state <= STATE_SEND_EMPTY_READY_RESPONSE; // go to reply state
                end else begin
                    process_state <= STATE_SEND_EMPTY_BUSY_RESPONSE; // go to busy response state
                end
            end

            STATE_SEND_EMPTY_READY_RESPONSE: begin
                tx_en <= 1'b0; // disable tx
                // wait ready for tx 
                if (!tx_busy) begin
                    tx_en <= 1'b1;
                    tx_byte_count <= tx_byte_count + 1;
                    
                    if (tx_byte_count == 0) begin
                        tx_data <= FRAME_HEADER1; // send test connect response
                    end else if (tx_byte_count == 1) begin
                        tx_data <= FRAME_HEADER2;
                    end else if (tx_byte_count == 2) begin
                        tx_data <= 0; // send length high byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 3) begin
                        tx_data <= 1; // send length low byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 4) begin
                        tx_data <= REPLY_OK; // send command response
                        tx_checksum <= tx_checksum + REPLY_OK;
                    end else if (tx_byte_count == 5) begin // 
                        tx_data <= ~tx_checksum; // send checksum
                    end else if (tx_byte_count == 6) begin
                        tx_data <= FRAME_FOOTER; // send end
                        package_process_done <= 1'b1;
                        process_state <= STATE_PROCESS_IDLE; // go back to idle state
                    end
                end
            end

            STATE_SEND_EMPTY_BUSY_RESPONSE: begin
                tx_en <= 1'b0; // disable tx
                // wait ready for tx 
                if (!tx_busy) begin
                    tx_en <= 1'b1;
                    tx_byte_count <= tx_byte_count + 1;
                    
                    if (tx_byte_count == 0) begin
                        tx_data <= FRAME_HEADER1; // send test connect response
                    end else if (tx_byte_count == 1) begin
                        tx_data <= FRAME_HEADER2;
                    end else if (tx_byte_count == 2) begin
                        tx_data <= 0; // send length high byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 3) begin
                        tx_data <= 1; // send length low byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 4) begin
                        tx_data <= REPLY_BUSY; // send command response
                        tx_checksum <= tx_checksum + REPLY_BUSY;
                    end else if (tx_byte_count == 5) begin // 
                        tx_data <= ~tx_checksum; // send checksum
                    end else if (tx_byte_count == 6) begin
                        tx_data <= FRAME_FOOTER; // send end
                        package_process_done <= 1'b1;
                        process_state <= STATE_PROCESS_IDLE; // go back to idle state
                    end
                end
            end


            STATE_LOOPBACK: begin
                tx_en <= 1'b0; // disable tx
                // wait ready for tx 
                if (!tx_busy) begin
                    tx_en <= 1'b1;
                    tx_byte_count <= tx_byte_count + 1;
                    
                    if (tx_byte_count == 0) begin
                        tx_data <= FRAME_HEADER1; // send test connect response
                    end else if (tx_byte_count == 1) begin
                        tx_data <= FRAME_HEADER2;
                    end else if (tx_byte_count == 2) begin
                        tx_data <= tx_length[15:8]; // send length high byte
                        tx_checksum <= tx_checksum + tx_length[15:8];
                    end else if (tx_byte_count == 3) begin
                        tx_data <= tx_length[7:0]; // send length low byte
                        tx_checksum <= tx_checksum + tx_length[7:0];
                    end else if (tx_byte_count == 4) begin
                        tx_data <= REPLY_OK; // send command response
                        tx_checksum <= tx_checksum + REPLY_OK;
                    end else if (recv_length>0 && tx_byte_count <= (4+recv_length)  ) begin // 4+1 ~ 4+len
                        tx_data <= recv_data[tx_byte_count - 5];
                        tx_checksum <= tx_checksum + recv_data[tx_byte_count - 5];

                        // tx_data <= tx_byte_count - 4; // send data
                        // tx_checksum <= tx_checksum + (tx_byte_count - 4); // update checksum
                    end else if (tx_byte_count == 5 + recv_length) begin // 
                        tx_data <= ~tx_checksum; // send checksum
                    end else if (tx_byte_count == 6 + recv_length) begin
                        tx_data <= FRAME_FOOTER; // send end
                        package_process_done <= 1'b1;
                        process_state <= STATE_PROCESS_IDLE; // go back to idle state
                    end
                end
            end

            STATE_READ_PSRAM: begin
                if (data_storage_ready) begin // wait for data storage controller ready
                    cmd_read_request <= 1'b1; // send read request command
                    read_request_addr <= {recv_data[0], recv_data[1], recv_data[2]};
                    process_state <= STATE_READ_PSRAM_WAIT; // go to wait state
                end
            end

            STATE_READ_PSRAM_WAIT: begin 
                cmd_read_request <= 1'b0; // disable read request command
                
                if (read_data_valid) begin // wait for read data valid
                    // psram_read_data <= read_data_out; // get read data
                    process_state <= STATE_READ_PSRAM_SEND; // go to send state
                end 
            end

            STATE_READ_PSRAM_SEND: begin
                tx_en <= 1'b0; // disable tx
                if (!tx_busy) begin // wait for tx ready
                    tx_en <= 1'b1; // enable tx
                    tx_byte_count <= tx_byte_count + 1; // increment byte count

                    if (tx_byte_count == 0) begin
                        tx_data <= FRAME_HEADER1; // send read response header
                    end else if (tx_byte_count == 1) begin
                        tx_data <= FRAME_HEADER2;
                    end else if (tx_byte_count == 2) begin
                        // len: psram burst 16, (64bit * 16 / 8)=  128 bytes 
                        tx_data <= (128 >> 8); // send length high byte
                        tx_checksum <= tx_checksum + (128 >> 8); // update checksum
                    end else if (tx_byte_count == 3) begin
                        tx_data <= 128; // send length low byte
                        tx_checksum <= tx_checksum + 128; // update checksum
                    end else if (tx_byte_count == 4) begin
                        tx_data <= REPLY_OK; // send command response
                        tx_checksum <= tx_checksum + REPLY_OK;
                    end else if (tx_byte_count < 5 + 128) begin // send data
                        // tx_data <= psram_read_data[(8*(tx_byte_count-5+1)-1)-:8]; // send data
                        // tx_checksum <= tx_checksum + psram_read_data[(8*(tx_byte_count-5+1)-1)-:8]; // update checksum
                        tx_data <= read_data_out[(8*(tx_byte_count-5+1)-1)-:8]; // send data
                        tx_checksum <= tx_checksum + read_data_out[(8*(tx_byte_count-5+1)-1)-:8]; // update checksum
                    end else if (tx_byte_count == 5 + 128) begin // send checksum
                        tx_data <= ~tx_checksum; // send checksum
                    end else if (tx_byte_count == 6 + 128) begin // send end
                        tx_data <= FRAME_FOOTER; // send end
                        package_process_done <= 1'b1; // set package process done flag
                        process_state <= STATE_PROCESS_IDLE; // go back to idle state
                    end
                end
            end

            STATE_START_RECORD: begin
                if(data_storage_ready) begin // wait for data storage done
                    cmd_record <= 1'b1; // send record command
                    process_state <= STATE_START_RECORD_REPLY; // go to reply state
                end
            end
            
            STATE_START_RECORD_REPLY: begin
                cmd_record <= 1'b0; // send record command

                tx_en <= 1'b0; // disable tx
                if (!tx_busy) begin
                    tx_en <= 1'b1;
                    tx_byte_count <= tx_byte_count + 1;
                    
                    if (tx_byte_count == 0) begin
                        tx_data <= FRAME_HEADER1; // send test connect response
                    end else if (tx_byte_count == 1) begin
                        tx_data <= FRAME_HEADER2;
                    end else if (tx_byte_count == 2) begin
                        tx_data <= 0; // send length high byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 3) begin
                        tx_data <= 0; // send length low byte
                        tx_checksum <= tx_checksum + 0;
                    end else if (tx_byte_count == 4) begin
                        tx_data <= REPLY_OK; // send command response
                        tx_checksum <= tx_checksum + REPLY_OK;
                    end else if (tx_byte_count == 5) begin // 
                        tx_data <= ~tx_checksum; // send checksum
                    end else if (tx_byte_count == 6) begin
                        tx_data <= FRAME_FOOTER; // send end
                        package_process_done <= 1'b1;
                        process_state <= STATE_PROCESS_IDLE; // go back to idle state
                    end
                end
            end
                

        





            // STATE

        endcase
    end
end






endmodule //uart_protocol_processor
