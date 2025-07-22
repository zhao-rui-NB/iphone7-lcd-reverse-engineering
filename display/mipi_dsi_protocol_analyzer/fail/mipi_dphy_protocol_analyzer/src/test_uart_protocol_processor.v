module test_uart_protocol_processor(
    input sys_clk_27,
    input sys_rst_n,

	input wire rx,
    output wire tx,
	output pll_lock_led,
    output psram_init_done_led,
	output data_storage_ready_led,

    output [1:0] O_psram_ck,
    output [1:0] O_psram_ck_n,
    inout [15:0] IO_psram_dq,
    inout [1:0] IO_psram_rwds,
    output [1:0] O_psram_cs_n,
    output [1:0] O_psram_reset_n
);

wire memory_clk; // 168Mhz
wire sys_clk; // form psram(memory_clk/2) 84Mhz

wire reset = ~sys_rst_n;

wire lock;
assign pll_lock_led = ~lock; // led 1 (10)

wire psram_init_done;
assign psram_init_done_led = ~psram_init_done; // led 2 (11)

// wire data_storage_done;
assign data_storage_ready_led = ~data_storage_ready; // led 3 (13)

// wire [1:0]                           	O_psram_ck;
// wire [1:0]                           	O_psram_ck_n;
// wire [1:0]                           	O_psram_cs_n;
// wire [1:0]                           	O_psram_reset_n;
wire [(64*16)-1:0] 						read_data_out;
wire                                 	read_data_valid;
wire 									data_storage_done;  
wire 									data_storage_ready; 

wire               						protocol_error;
wire               						cmd_record;
wire               						cmd_read_request;
wire [20:0]        						read_request_addr;



Gowin_rPLL your_instance_name(
	.clkout		(memory_clk		), //output clkout
	.lock		(lock			), //output lock
	.reset		(reset				), //input reset
	.clkin		(sys_clk_27		) //input clkin
);


data_storage_controller #(
	.PSRAM_BURST_DATA_SIZE 	( 16  ),
	.PSRAM_BURST_TCMD      	( 26  ))
u_data_storage_controller(
    .clk_i 					(sys_clk_27				),
    .byte_clk  				(sys_clk				),
    .memory_clk				(memory_clk				),
    .sys_clk				(sys_clk				),
	.memory_clk_div2_o		(sys_clk				),// output for system clock
	.pll_lock          		( lock           		),
	.sys_rst_n         		( sys_rst_n          	),
	.data_in_valid     		( data_in_valid      	),
	.data_in           		( data_in            	),
	.O_psram_ck        		( O_psram_ck         	), // psram
	.O_psram_ck_n      		( O_psram_ck_n       	), // psram
	.IO_psram_dq       		( IO_psram_dq        	), // psram
	.IO_psram_rwds     		( IO_psram_rwds      	), // psram
	.O_psram_cs_n      		( O_psram_cs_n       	), // psram
	.O_psram_reset_n   		( O_psram_reset_n    	), // psram
	.cmd_record        		( cmd_record         	),
	.cmd_read_request  		( cmd_read_request   	),
	.read_request_addr 		( read_request_addr  	),
	.read_data_out     		( read_data_out      	),
	.read_data_valid   		( read_data_valid    	),
    .done             		( data_storage_done		),
	.ready             		( data_storage_ready 	),
    .psram_init_done    	( psram_init_done    	)

);

uart_protocol_processor u_uart_protocol_processor(
	.sys_clk         		( sys_clk          		),
	.sys_rst_n          	( sys_rst_n           	),
	.rx                 	( rx                  	),
	.tx                 	( tx                  	),
	.protocol_error     	( protocol_error     	),
	.cmd_record         	( cmd_record          	),
	.cmd_read_request   	( cmd_read_request    	),
	.read_request_addr  	( read_request_addr   	),
	.read_data_out      	( read_data_out       	),
	.read_data_valid    	( read_data_valid     	),
	.data_storage_done  	( data_storage_done   	),
	.data_storage_ready 	( data_storage_ready  	)
);


reg [7:0] data_counter;
reg data_in_valid;
reg [31:0] data_in;
always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        data_counter <= 0;
		data_in_valid <= 0;
		data_in <= 0;
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













endmodule 