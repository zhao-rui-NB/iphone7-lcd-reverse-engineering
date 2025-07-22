module top(
    input ddr_clk, // Clock signal
    input [16:0] ddr_data_in, // 18-bit input data
    // input ddr_data_valid,

    input clk_50m, // 50 MHz clock input
    input sys_rst_n, // System reset, active low

    input save_data_key,
    input output_data_key,
    input test_key,

    output init_done_led,
    output save_data_led, // LED to indicate save data key pressed
    output output_data_led,

    // output  [1:0] func_disp_led,

    output htclk,
    output htreq,
    input htrdy,
    output htvld,
    output [31:0] htd, 
    input hspi_cts,



    // output clk_div2,

    output [1:0] O_psram_ck,
    output [1:0] O_psram_ck_n,
    inout [15:0] IO_psram_dq,
    inout [1:0] IO_psram_rwds,
    output [1:0] O_psram_cs_n,
    output [1:0] O_psram_reset_n

);
    // +++++++ ddr input clk domain ++++++
     // 33-32: data valid, 31-0: data
    // wire [35:0] ddr_q;
    // wire [31:0] ddr_data = ddr_q[31:0]; // 32-bit data from DDR
    // wire ddr_data_valid = ddr_q[33] | ddr_q[32]; // Data valid signal
    

    wire [33:0] ddr_q;
    // 32-17 15-0: data, 16: data valid, 33: data valid
    wire [31:0] ddr_data = {ddr_q[32:17], ddr_q[15:0]}; // 32-bit data from DDR
    wire ddr_data_valid = ddr_q[33] | ddr_q[16]; // Data valid signal

    Gowin_DDR ddr_inst(
        .clk(ddr_clk), //input clk
        .din(ddr_data_in), //input [17:0] din 
        .q(ddr_q) //output [35:0] q
    );

    
    // +++++++ ddr input clk domain to system clk domain +++++++
    wire sys_clk; // this clock is from memory_clk/2 (160/2 = 80 MHz)
    
    wire input_fifo_reset;
    
    wire input_fifo_read_en;
    wire [63:0] input_fifo_read_data;
    wire input_fifo_almost_empty;

    fifo_hs_input fifo_hs_input_inst(
		.Reset(input_fifo_reset), //input Reset

		.WrClk(ddr_clk), //input WrClk
		.WrEn(ddr_data_valid), //input WrEn
		.Data(ddr_data), //input [31:0] Data
		
        .RdClk(sys_clk), //input RdClk
		.RdEn(input_fifo_read_en), //input RdEn
		.Q(input_fifo_read_data), //output [63:0] Q
		
        .Almost_Empty(input_fifo_almost_empty), //output Almost_Empty
		
        .Empty(), //output Empty
		.Full() //output Full
	);
    
    // +++++++ system clock domain +++++++

    // output declaration of module function_key
    // wire [1:0] func_disp_led;
    // wire  trigger_save_data;
    // wire trigger_output_data;
    
    // function_key u_function_key(
    //     .clk           	        (clk_50m        ),
    //     .next_key      	        (next_key       ),
    //     .ok_key        	        (ok_key         ),
    //     .func_key_rst_n_db    	(sys_rst_n      ),
    //     .func_key_save_db     	(save_key       ),
    //     .func_key_output_db   	(output_key     ),
    //     .func_disp_led 	        (func_disp_led  )
    // );
    
    // function_key u_function_key(
    //     .clk                 	(clk_50m              ),
    //     .sys_clk             	(sys_clk              ),
    //     .next_key            	(next_key             ),
    //     .ok_key              	(ok_key               ),
    //     .func_sys_rst        	(sys_rst_n            ),
    //     .func_disp_led       	(func_disp_led        ),
    //     // ++++++ system clk domain ++++++ 
    //     .trigger_save_data   	(trigger_save_data    ),
    //     .trigger_output_data 	(trigger_output_data  )
    // );
    





    wire memory_clk;
    wire memory_clk_p;
    wire pll_lock;
    
    // pll output 160 mhz for PSRAM
    Gowin_rPLL pll_inst(
        .clkin(clk_50m), //input clkin
        .clkout(memory_clk), //output clkout
        .clkoutp(memory_clk_p), //output clkoutp
        .lock(pll_lock) //output lock
    );


    wire [20:0] psram_addr;
    wire psram_cmd; 
    wire psram_cmd_en;
    wire [63:0] psram_write_data;
    wire [63:0] psram_read_data;
    wire psram_read_data_valid;

    PSRAM_Memory_Interface_HS_V2_Top psram_inst(
		.clk_d(clk_50m), //input clk_d
		.memory_clk(memory_clk), //input memory_clk
		.memory_clk_p(memory_clk_p), //input memory_clk_p
		.pll_lock(pll_lock), //input pll_lock
		.rst_n(1'b1), //input rst_n

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
		
        .init_calib(init_done), //output init_calib
		
        .clk_out(sys_clk), //output clk_out
		.data_mask(8'b0) //input [7:0] data_mask
	);


    assign init_done_led = ~init_done;
    
    wire output_fifo_write_reset;
    wire output_fifo_read_en;
    wire [31:0] output_fifo_read_data;

    wire output_fifo_read_reset = 0;
    wire output_fifo_write_en;
    wire [63:0] output_fifo_write_data;
    
    wire output_fifo_almost_full;

    wire output_fifo_emtpy;

	fifo_hs_output fifo_hs_output_inst(

		.WrClk(sys_clk), //input WrClk
        .WrReset(output_fifo_write_reset), //input WrReset
		.WrEn(output_fifo_write_en), //input WrEn
        .Data(output_fifo_write_data), //input [63:0] Data
		
		.RdReset(output_fifo_read_reset), //input RdReset
		.RdClk(sys_clk), //input RdClk
		.RdEn(output_fifo_read_en), //input RdEn
		.Q(output_fifo_read_data), //output [31:0] Q
		
        .Almost_Full(output_fifo_almost_full), //output Almost_Full
		
        .Empty(output_fifo_emtpy), //output Empty
		.Full() //output Full
	);
    wire save_data_flag;
    wire output_data_flag;
    assign save_data_led = ~save_data_flag;
    assign output_data_led = ~output_data_flag;
    data_storage_controller data_storage_controller_inst(
        .sys_clk                 	(sys_clk                  ),
        .sys_rst_n               	(sys_rst_n                ),

        // .trigger_save_data          (trigger_save_data        ),
        // .trigger_output_data        (trigger_output_data      ),

        .save_data_key              (save_data_key),
        .output_data_key            (output_data_key),

        .save_data_led              (save_data_flag            ),
        .output_data_led            (output_data_flag          ),    
        
        .input_fifo_almost_empty 	(input_fifo_almost_empty  ),
        .input_fifo_reset        	(input_fifo_reset         ),
        .input_fifo_read_en      	(input_fifo_read_en       ),
        .input_fifo_read_data    	(input_fifo_read_data     ),
        
        .output_fifo_reset       	(output_fifo_write_reset  ),
        .output_fifo_write_en    	(output_fifo_write_en     ),
        .output_fifo_write_data  	(output_fifo_write_data   ),
        .output_fifo_almost_full 	(output_fifo_almost_full  ),
        
        .psram_addr              	(psram_addr               ),
        .psram_cmd               	(psram_cmd                ),
        .psram_cmd_en            	(psram_cmd_en             ),
        .psram_write_data        	(psram_write_data         ),
        .psram_read_data         	(psram_read_data          ),
        .psram_read_data_valid   	(psram_read_data_valid    )
    );

    hspi_sender  hspi_sender_inst(
        .sys_clk               	(sys_clk                ),
        .sys_rst_n             	(sys_rst_n              ),
        
        

        .htclk                 	(htclk                  ),
        .htreq                 	(htreq                  ),
        .htrdy                 	(htrdy                  ),
        .htvld                 	(htvld                  ),
        .htd                   	(htd                    ),
        .hspi_cts              	(hspi_cts               ),
        
        .output_fifo_read_en   	(output_fifo_read_en    ),
        .output_fifo_read_data 	(output_fifo_read_data  ),
        .output_fifo_emtpy     	(output_fifo_emtpy      )


        // .output_fifo_read_en   	(fake_output_fifo_read_en    ),
        // .output_fifo_read_data 	(fake_output_fifo_read_data  ),
        // .output_fifo_emtpy     	(fake_output_fifo_emtpy      )
    );


    // wire [31:0] fake_output_fifo_read_data;
    // wire fake_output_fifo_emtpy;
    // fake_fifo_test_data u_fake_fifo_test_data(
    //     .sys_clk               	(sys_clk                ),
    //     .sys_rst_n             	(sys_rst_n              ),
    //     .output_fifo_read_en   	(fake_output_fifo_read_en    ),
    //     .output_fifo_read_data 	(fake_output_fifo_read_data  ),
    //     .output_fifo_emtpy     	(fake_output_fifo_emtpy      )
    // );
    
    




endmodule