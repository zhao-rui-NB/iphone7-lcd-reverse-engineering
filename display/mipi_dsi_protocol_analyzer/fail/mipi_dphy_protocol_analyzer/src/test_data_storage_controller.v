module test_data_storage_controller(
    input sys_clk_27,
    input sys_rst_n,

    output pll_lock_led,
    output psram_init_done_led,

    output [1:0] O_psram_ck,
    output [1:0] O_psram_ck_n,
    inout [15:0] IO_psram_dq,
    inout [1:0] IO_psram_rwds,
    output [1:0] O_psram_cs_n,
    output [1:0] O_psram_reset_n
);


wire lock;
assign pll_lock_led = ~lock; // led 1 (10)

wire psram_init_done;
assign psram_init_done_led = ~psram_init_done; // led 2 (11)

// outports wire
// wire [1:0]                           	O_psram_ck;
// wire [1:0]                           	O_psram_ck_n;
// wire [1:0]                           	O_psram_cs_n;
// wire [1:0]                           	O_psram_reset_n;
wire [(64*16)-1:0] 	read_data_out;
wire                                 	read_data_valid;
wire                                 	ready;
wire                                 	output_data_done;

reg data_in_valid;
reg [31:0] data_in;
reg cmd_record;
reg cmd_read_request;
reg [20:0] read_request_addr;

Gowin_rPLL rpll_inst(
    .clkout(sys_clk_200), //output clkout
    .lock(lock), //output lock
    .clkoutd(sys_clk), //output clkoutd 100Mhz
    .reset(~sys_rst_n), //input reset
    .clkin(sys_clk_27) //input clkin
);

// sys_clk == 200 mhz
data_storage_controller #(
	.PSRAM_BURST_DATA_SIZE 	( 16  ),
	.PSRAM_BURST_TCMD      	( 26  ))
u_data_storage_controller(
	.sys_clk           	( sys_clk            ),
	.byte_clk          	( sys_clk           ),
	.memory_clk        	( sys_clk_200         ),
	.pll_lock          	( lock           ),
	.sys_rst_n         	( sys_rst_n          ),
	.data_in_valid     	( data_in_valid      ),
	.data_in           	( data_in            ),
	.O_psram_ck        	( O_psram_ck         ), // psram
	.O_psram_ck_n      	( O_psram_ck_n       ), // psram
	.IO_psram_dq       	( IO_psram_dq        ), // psram
	.IO_psram_rwds     	( IO_psram_rwds      ), // psram
	.O_psram_cs_n      	( O_psram_cs_n       ), // psram
	.O_psram_reset_n   	( O_psram_reset_n    ), // psram
	.cmd_record        	( cmd_record         ),
	.cmd_read_request  	( cmd_read_request   ),
	.read_request_addr 	( read_request_addr  ),
	.read_data_out     	( read_data_out      ),
	.read_data_valid   	( read_data_valid    ),
    .done             	( done  ),
	.ready             	( ready ),
    .psram_init_done    ( psram_init_done    )
);

// gen data_in_valid signal and data


// data_in_valid <= 0;
// data_in <= 0;
// cmd_record <= 0;
// cmd_read_request <= 0;
// read_request_addr <= 0;

reg [7:0] data_counter;
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin

        data_counter <= 0;

    end else begin
        data_counter <= data_counter + 1;
        if (data_counter < 32) begin
            data_in_valid <= 1;
            // data_in <= {data_counter , {3{8'b0}}};
            data_in <= (data_counter%2==0) ? data_counter : 0;
        end else if (data_counter < 64) begin
            data_in_valid <= 0;
            data_in <= 0;
        end else begin 
            data_counter <= 0;
        end

    end
end        


//  record data than read data

reg [3:0] test_state;


localparam TEST_IDLE = 0;
localparam TEST_RECORD = 1;
localparam TEST_RECORD_WAIT = 2;
localparam TEST_READ = 3;
localparam TEST_READ_WAIT = 4;
localparam TEST_DONE = 5;


always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        test_state <= TEST_IDLE;
        cmd_record <= 0;
        cmd_read_request <= 0;
        read_request_addr <= 21'h00000;

    end else begin
        case (test_state)
            TEST_IDLE: begin
                test_state <= TEST_RECORD;
                // read_request_addr <= 21'h00000;
                // read_request_addr <= 21'h0FFF0;
                read_request_addr <= 21'h0000;

            end
            TEST_RECORD: begin
                if(ready) begin
                    cmd_record <= 1;
                    test_state <= TEST_RECORD_WAIT;
                end
            end
            TEST_RECORD_WAIT: begin
                cmd_record <= 0;
                if(done) begin
                    test_state <= TEST_READ;
                end
            end

            TEST_READ: begin
                if(ready) begin
                    cmd_read_request <= 1;
                    // read_request_addr <= 21'h00000;
                    test_state <= TEST_READ_WAIT;
                end
            end

            TEST_READ_WAIT: begin
                cmd_read_request <= 0;
                if(done) begin
                    if (read_request_addr < 21'd128) begin
                        read_request_addr <= read_request_addr + 32;
                        test_state <= TEST_READ;
                    end else begin
                        test_state <= TEST_DONE;
                    end
                end
            end
        endcase
    end
end

endmodule