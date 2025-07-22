module top(
    input sys_clk_27,
    input sys_rst_n,

    // mc20901
    output [1:0] mc20901_gpio,
    output mc20901_bta,
    output mc20901_pinswap,

    input mc20901_hs_c_p, // mipi clk
    input mc20901_hs_c_n,
    input mc20901_hs_d_p, // mipi data1
    input mc20901_hs_d_n,
    input mc20901_hs_e_p, // mipi data0
    input mc20901_hs_e_n,

    input mc20901_lp_c_p, // mipi lp clk
    input mc20901_lp_c_n,
    input mc20901_lp_d_p, // mipi lp data1
    input mc20901_lp_d_n,
    input mc20901_lp_e_p, // mipi lp data0
    input mc20901_lp_e_n,

    // input wire rx,  
    // output wire tx,
	// output pll_lock_led,
    // output psram_init_done_led,
	// output data_storage_ready_led,

    // output [1:0] O_psram_ck,
    // output [1:0] O_psram_ck_n,
    // inout [15:0] IO_psram_dq,
    // inout [1:0] IO_psram_rwds,
    // output [1:0] O_psram_cs_n,
    // output [1:0] O_psram_reset_n,

    // test
//    output sys_clk,
//    output byte_clk,
    output div_clk,
    output byte_clk,
    output hs_burst_flag,
    // output div_byte_clk,

    output hs_data0,
    output hs_data1,
    // output [7:0] data_out2,


    input key1, 
    input d
);
    wire hs_clk;
    wire hs_data0;  
    wire hs_data1;
    TLVDS_IBUF hs_data1_ibuf(.O(hs_data1), .I(mc20901_hs_d_p), .IB(mc20901_hs_d_n));
    TLVDS_IBUF hs_data0_ibuf(.O(hs_data0), .I(mc20901_hs_e_p), .IB(mc20901_hs_e_n));
    TLVDS_IBUF hs_clk_ibuf(.O(hs_clk), .I(mc20901_hs_c_p), .IB(mc20901_hs_c_n));

// /*
    CLKDIV clkdiv_byte_clk (
        .CLKOUT(byte_clk),
        .HCLKIN(hs_clk),
        .RESETN(1'b1),
        .CALIB(1'b0)
    );
    defparam clkdiv_byte_clk.DIV_MODE = "4";
    defparam clkdiv_byte_clk.GSREN = "false";


    wire [7:0] lane0_data;
    wire [7:0] lane1_data;

    // output declaration of module IDES8

    IDES8 ides8_lane0(
        .Q0    	( lane0_data[0] ),
        .Q1    	( lane0_data[1] ),
        .Q2    	( lane0_data[2] ),
        .Q3    	( lane0_data[3] ),      
        .Q4    	( lane0_data[4] ),
        .Q5    	( lane0_data[5] ),
        .Q6    	( lane0_data[6] ),
        .Q7    	( lane0_data[7] ),
        .D(hs_data0),
        .FCLK(hs_clk),
        .PCLK(byte_clk),
        .CALIB(1'b0), // Calibration signal, can be set to 0 for normal operation
        .RESET(~sys_rst_n) // Reset signal, active low
    );
    defparam ides8_lane0.GSREN="false";
    defparam ides8_lane0.LSREN ="true";


    IDES8 ides8_lane1(
        .Q0    	( lane1_data[0] ),
        .Q1    	( lane1_data[1] ),
        .Q2    	( lane1_data[2] ),
        .Q3    	( lane1_data[3] ),      
        .Q4    	( lane1_data[4] ),
        .Q5    	( lane1_data[5] ),
        .Q6    	( lane1_data[6] ),
        .Q7    	( lane1_data[7] ),
        .D(hs_data1),
        .FCLK(hs_clk),
        .PCLK(byte_clk),
        .CALIB(1'b0), // Calibration signal, can be set to 0 for normal operation
        .RESET(~sys_rst_n) // Reset signal, active low
    );
    defparam ides8_lane1.GSREN="false";
    defparam ides8_lane1.LSREN ="true";
// */


///

    // CLKDIV clkdiv_byte_clk (
    //     .CLKOUT(byte_clk),
    //     .HCLKIN(hs_clk),
    //     .RESETN(1'b1),
    //     .CALIB(1'b0)
    // );
    // defparam clkdiv_byte_clk.DIV_MODE = "8";
    // defparam clkdiv_byte_clk.GSREN = "false";


    // wire [15:0] lane0_data;
    // wire [15:0] lane1_data;

    // output declaration of module IDES8
    
    // IDES16 ides8_lane0(
    //     .Q0    	( lane0_data[0] ),
    //     .Q1    	( lane0_data[1] ),
    //     .Q2    	( lane0_data[2] ),
    //     .Q3    	( lane0_data[3] ),      
    //     .Q4    	( lane0_data[4] ),
    //     .Q5    	( lane0_data[5] ),
    //     .Q6    	( lane0_data[6] ),
    //     .Q7    	( lane0_data[7] ),
    //     .Q8    	( lane0_data[8] ),
    //     .Q9    	( lane0_data[9] ),
    //     .Q10   	( lane0_data[10] ),
    //     .Q11   	( lane0_data[11] ),
    //     .Q12   	( lane0_data[12] ),
    //     .Q13   	( lane0_data[13] ),
    //     .Q14   	( lane0_data[14] ),
    //     .Q15   	( lane0_data[15] ),
    //     .D(hs_data0),
    //     .FCLK(hs_clk),
    //     .PCLK(byte_clk),
    //     .CALIB(1'b0), // Calibration signal, can be set to 0 for normal operation
    //     .RESET(~sys_rst_n) // Reset signal, active low
    // );
    // defparam ides8_lane0.GSREN="false";
    // defparam ides8_lane0.LSREN ="true";


    // IDES16 ides8_lane1(
    //     .Q0    	( lane1_data[0] ),
    //     .Q1    	( lane1_data[1] ),
    //     .Q2    	( lane1_data[2] ),
    //     .Q3    	( lane1_data[3] ),      
    //     .Q4    	( lane1_data[4] ),
    //     .Q5    	( lane1_data[5] ),
    //     .Q6    	( lane1_data[6] ),
    //     .Q7    	( lane1_data[7] ),
    //     .Q8    	( lane1_data[8] ),
    //     .Q9    	( lane1_data[9] ),
    //     .Q10   	( lane1_data[10] ),
    //     .Q11   	( lane1_data[11] ),
    //     .Q12   	( lane1_data[12] ),
    //     .Q13   	( lane1_data[13] ),
    //     .Q14   	( lane1_data[14] ),
    //     .Q15   	( lane1_data[15] ),
    //     .D(hs_data1),
    //     .FCLK(hs_clk),
    //     .PCLK(byte_clk),
    //     .CALIB(1'b0), // Calibration signal, can be set to 0 for normal operation
    //     .RESET(~sys_rst_n) // Reset signal, active low
    // );
    // defparam ides8_lane1.GSREN="false";
    // defparam ides8_lane1.LSREN ="true";

///





    // assign mc20901_gpio = 2'b01; // GPIO output
    // assign mc20901_gpio = 2'b10; // GPIO output

    assign mc20901_gpio = (key1) ? 2'b01 : 2'b10; // GPIO output based on key1 state
    // assign mc20901_gpio = (hs_burst_flag) ? 2'b01 : 2'b10; // GPIO output based on key1 state

    assign mc20901_bta = 1'b0; // BTA output
    assign mc20901_pinswap = 1'b0; // Pinswap output

    wire div8;
    Gowin_CLKDIV ckdiv8_1(
        .clkout(div8), //output clkout
        .hclkin(hs_clk), //input hclkin
        .resetn(sys_rst_n) //input resetn
    );

    Gowin_CLKDIV ckdiv8_2(
        .clkout(div_clk), //output clkout
        .hclkin(div8), //input hclkin
        .resetn(sys_rst_n) //input resetn
    );


    wire hs_burst_flag;
    wire byte_clk;

    // raw data from mipi
    wire [7:0] data_out0;
    wire [7:0] data_out1;
    wire [7:0] data_out2;
    
    // bit aligned 
    wire bit_aligned_data_valid0;
    wire bit_aligned_data_valid1;
    wire bit_aligned_data_valid2;
    wire [7:0] bit_aligned_data0;
    wire [7:0] bit_aligned_data1;
    wire [7:0] bit_aligned_data2;


    // byte aligned
    wire                byte_aligned_data_valid;
    wire [(8*3-1):0]    byte_aligned_data;
    wire                align_fail;
    

    wire [1:0] LP_DATA0;

/*
    //    MIPI_RX_Advance_Top mipi_rx_advance_top(
    //		.reset_n(sys_rst_n), //input reset_n
    //		.HS_CLK_P(HS_CLK_P), //input HS_CLK_P
    //		.HS_CLK_N(HS_CLK_N), //input HS_CLK_N
    //	    	.clk_byte_out(byte_clk), //output clk_byte_out
    //        
    //        .HS_DATA2_P(HS_DATA2_P), //input HS_DATA2_P
    //		.HS_DATA2_N(HS_DATA2_N), //input HS_DATA2_N
    //		    .data_out2(data_out2), //output [7:0] data_out2
    //		.HS_DATA1_P(HS_DATA1_P), //input HS_DATA1_P
    //		.HS_DATA1_N(HS_DATA1_N), //input HS_DATA1_N
    //		    .data_out1(data_out1), //output [7:0] data_out1
    //		.HS_DATA0_P(HS_DATA0_P), //input HS_DATA0_P
    //		.HS_DATA0_N(HS_DATA0_N), //input HS_DATA0_N
    //		    .data_out0(data_out0), //output [7:0] data_out0
    //		.hs_en(hs_burst_flag), //input hs_en
    //		.clk_term_en(1'b1), //input clk_term_en
    //		.data_term_en(1'b1), //input data_term_en
    //		    .ready() //output ready
    //	);
*/

/*
    MIPI_RX_Advance_Top MIPI_RX(
		.reset_n(sys_rst_n), //input reset_n
		.MIPI_CLK_P(MIPI_CLK_P), //inout MIPI_CLK_P
		.MIPI_CLK_N(MIPI_CLK_N), //inout MIPI_CLK_N
		.lp_clk_out(), //output [1:0] lp_clk_out
		.lp_clk_in(), //input [1:0] lp_clk_in
		.lp_clk_dir(), //input lp_clk_dir
		.clk_byte_out(byte_clk), //output clk_byte_out
		.MIPI_LANE2_P(MIPI_LANE2_P), //inout MIPI_LANE2_P
		.MIPI_LANE2_N(MIPI_LANE2_N), //inout MIPI_LANE2_N
		.data_out2(data_out2), //output [7:0] data_out2
		.lp_data2_out(), //output [1:0] lp_data2_out
		.lp_data2_in(), //input [1:0] lp_data2_in
		.lp_data2_dir(), //input lp_data2_dir
		.MIPI_LANE1_P(MIPI_LANE1_P), //inout MIPI_LANE1_P
		.MIPI_LANE1_N(MIPI_LANE1_N), //inout MIPI_LANE1_N
		.data_out1(data_out1), //output [7:0] data_out1
		.lp_data1_out(), //output [1:0] lp_data1_out
		.lp_data1_in(), //input [1:0] lp_data1_in
		.lp_data1_dir(), //input lp_data1_dir
		.MIPI_LANE0_P(MIPI_LANE0_P), //inout MIPI_LANE0_P
		.MIPI_LANE0_N(MIPI_LANE0_N), //inout MIPI_LANE0_N
		.data_out0(data_out0), //output [7:0] data_out0
		.lp_data0_out(), //output [1:0] lp_data0_out
		.lp_data0_in(), //input [1:0] lp_data0_in
		.lp_data0_dir(), //input lp_data0_dir
		.hs_en(1'b1), //input hs_en
		.clk_term_en(1'b1), //input clk_term_en
		.data_term_en(1'b1), //input data_term_en
		.ready() //output ready
	);

*/

    mipi_lane_state_detection mipi_lane_state_detection_inst(
        .sys_clk(byte_clk),
        .sys_rst_n(sys_rst_n),
        .lp_lane_data0_i( {mc20901_lp_d_p, mc20901_lp_d_n} ), // mipi lp data0
        .hs_burst_flag(hs_burst_flag)
    );

    // mipi_byte_aligner mipi_byte_aligner_lane0(
    //     .byte_clk           (byte_clk                   ),
    //     .sys_rst_n          (sys_rst_n                  ),
    //     .align_rst_n        (hs_burst_flag              ),
    //     .data_in            (lane0_data                  ),
    //     .data_out_valid     (bit_aligned_data_valid0    ),
    //     .data_out           (bit_aligned_data0          )
    // );

    // mipi_byte_aligner mipi_byte_aligner_lane1(
    //     .byte_clk           (byte_clk                   ),
    //     .sys_rst_n          (sys_rst_n                  ),
    //     .align_rst_n        (hs_burst_flag              ),
    //     .data_in            (lane1_data                 ),
    //     .data_out_valid     (bit_aligned_data_valid1    ),
    //     .data_out           (bit_aligned_data1          )
    // );

    // mipi_byte_aligner mipi_byte_aligner_lane2(
    //     .byte_clk           (byte_clk                   ),
    //     .sys_rst_n          (sys_rst_n                  ),
    //     .align_rst_n        (hs_burst_flag              ),
    //     .data_in            (data_out2                  ),
    //     .data_out_valid     (bit_aligned_data_valid2    ),
    //     .data_out           (bit_aligned_data2          )
    // );

/*
    mipi_multi_lane_aligner #(
        .LANES       	( 3  ),
        .ALIGN_DEPTH 	( 5  ))
    u_mipi_multi_lane_aligner(
        .byte_clk             	( byte_clk              ),
        .sys_rst_n            	( sys_rst_n             ),
        // .lanes_data_in_valid  	( aligned_data_valid_lane0   ),
        // .lanes_data_in        	( aligned_data_lane0         ),

        .lanes_data_in_valid  	({bit_aligned_data_valid2,bit_aligned_data_valid1,bit_aligned_data_valid0}      ),
        .lanes_data_in        	({bit_aligned_data2,bit_aligned_data1,bit_aligned_data0}                        ),
        
        .lanes_data_out_valid 	( byte_aligned_data_valid   ),
        .lanes_data_out       	( byte_aligned_data         ),
        .align_fail           	( align_fail                )
    );
*/
    
/*
    wire reset = ~sys_rst_n;
    wire memory_clk; // 168Mhz
    wire sys_clk; // form psram(memory_clk/2) 84Mhz

    wire lock;
    assign pll_lock_led = ~lock; // led 1 (10)
    wire psram_init_done;
    assign psram_init_done_led = ~psram_init_done; // led 2 (11)
    // wire data_storage_done;
    assign data_storage_ready_led = ~data_storage_ready; // led 3 (13)


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
*/
/*
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
        .data_in_valid     		( byte_aligned_data_valid      	),
        .data_in           		( byte_aligned_data            	),
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

*/



endmodule