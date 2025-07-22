module top(
    inout clk_p,
    inout clk_n,
    inout [1:0] data_p,
    inout [1:0] data_n,

    input key1, // D9 // rst
    // input key2, // D10

    input clk_50m,
    output reg sys_clk_div2,

    output wire hs_burst_flag,

    output sys_clk,

    // output sys_clk_x2,
    

    // output multi_lane_align_data_out_valid,
    // output [31:0] multi_lane_align_data_out,
    // output multi_lane_align_error
    // output output_multi_lane_align_data_out_valid,
    output ddr_output_clk,
    // output output_multi_lane_align_data_out_valid,
    output [16:0] output_multi_lane_align_data_out // 16: hs burst flag, 17: not used
    
    // output output_hs_burst_flag,
    // output output_toggle


    // output rxhsbyteclk,
    // output clkhsbyte
);

wire sys_clk;
// wire sys_clk_x2;
wire clk_50m_pll_in;

PLLREFCS PLLREFCS_inst(
    .CLK0(clk_50m),
    .CLK1(1'b0), 
    .SEL (1'b0), 
    .PLLCSOUT(clk_50m_pll_in)
);

wire CLKOS ;
pll_sys_clk pll_sys_clk_inst(
    .CLKI(clk_50m_pll_in), 
    .CLKOP(sys_clk),
    .CLKOS(CLKOS)
);


always @(posedge sys_clk) begin
    sys_clk_div2 <= ~sys_clk_div2;
end


wire d0_cd;
wire d0_rxlpn;
wire d0_rxlpp;
// {lane1[2] lane0[2] lane1[1] lane0[1] lane1[0] lane0[0]}
wire [31:0] q; 



mipi_rx mipi_rx_inst(

    .clk_p        	(clk_p         ),
    .clk_n        	(clk_n         ),
    .data_p       	(data_p        ),
    .data_n       	(data_n        ),

    .usrstdby     	(1'b0      ), // 0 模組啟用

    // clk lane
    .clk_rxhsen   	(1'b1     ), // 時鐘 1:HS , 0:LP
    .clk_rxlpen   	(1'b1     ), // 時鐘LP時 接收開啟

    .clk_cd       	(),
    .clk_rxlpn    	(),
    .clk_rxlpp    	(),

    .clkhsbyte    	(clkhsbyte     ),

    // data lane 
    .d0_rxhsen    	(hs_burst_flag         ), // 1:HS , 0:LP
    // .d0_rxhsen    	(key2    ), // 1:HS , 0:LP
    .d0_rxlpen    	(1'b1           ), // LP 時數據方向, 0:tx 1:rx
    .d0_hsdeseren 	(1'b1           ), //解串開啟
    
    .d0_txlpn     	(1'b0           ), // LP 要發送的數據
    .d0_txlpp     	(1'b0           ), // LP 要發送的數據
    
    .d0_cd        	(d0_cd         ), 
    .d0_rxlpn     	(d0_rxlpn      ),
    .d0_rxlpp     	(d0_rxlpp      ),
    .rxhsbyteclk  	(rxhsbyteclk   ), // 同步成功後數據的輸出時鐘
    .q            	(q             )
    
);


mipi_lane_state_detection mipi_lane_state_detection_inst(
    .sys_clk(sys_clk),
    .sys_rst_n(key1),

    .lp_lane_data0({d0_rxlpp,d0_rxlpn}),
    .lp_lane_data0_cd(d0_cd),

    .hs_burst_flag(hs_burst_flag)  // hs burst flag
);


wire dphy_raw_fifo_Reset;
wire dphy_raw_fifo_RdEn;
wire [31:0] dphy_raw_fifo_Q;
wire dphy_raw_fifo_Empty;
wire dphy_raw_fifo_Full;


dphy_raw_fifo dphy_raw_fifo_inst(
    .RPReset(1'b0), 
    .Reset(dphy_raw_fifo_Reset), 
    
    .WrClock(rxhsbyteclk), 
    .WrEn(1'b1),
    .Data(q), 
    
    .RdClock(sys_clk), 
    .RdEn(dphy_raw_fifo_RdEn), 
    .Q(dphy_raw_fifo_Q), 
    
    .Empty(dphy_raw_fifo_Empty), 
    .Full(dphy_raw_fifo_Full)
);


// wire [15:0] raw_q_lane0 = {q[30], q[28], q[26], q[24], q[22], q[20], q[18], q[16], 
//                     q[14], q[12], q[10],  q[8],  q[6],  q[4],  q[2], q[0]};

// wire [15:0] raw_q_lane1 = {q[31], q[29], q[27], q[25], q[23], q[21], q[19], q[17], 
//                     q[15], q[13], q[11],  q[9],  q[7],  q[5],  q[3], q[1]};

wire raw_data_out_valid;
wire [15:0] raw_data_out_lane0;
wire [15:0] raw_data_out_lane1;

mipi_raw_data_controller mipi_raw_data_controller_inst(
    .sys_clk(sys_clk),
    .sys_rst_n(key1),

    .hs_burst_flag(hs_burst_flag),

    // fifo interface
    .dphy_raw_fifo_Empty(dphy_raw_fifo_Empty),
    .dphy_raw_fifo_Q(dphy_raw_fifo_Q),

    .dphy_raw_fifo_RdEn(dphy_raw_fifo_RdEn ),
    .dphy_raw_fifo_Reset(dphy_raw_fifo_Reset),

    // output data
    .raw_data_out_valid(raw_data_out_valid),
    .raw_data_out_lane0(raw_data_out_lane0),
    .raw_data_out_lane1(raw_data_out_lane1)

);



wire byte_align_valid_lane0;
wire byte_align_valid_lane1;
wire [15:0] byte_align_data_lane0;
wire [15:0] byte_align_data_lane1;

mipi_byte_aligner mipi_byte_aligner_lane0 (
    .byte_clk(sys_clk),
    .sys_rst_n(key1),

    .align_rst_n(hs_burst_flag),
    .data_in_valid(raw_data_out_valid),
    .data_in(raw_data_out_lane0),

    .data_out_valid(byte_align_valid_lane0),
    .data_out(byte_align_data_lane0)
);

mipi_byte_aligner mipi_byte_aligner_lane1 (
    .byte_clk(sys_clk),
    .sys_rst_n(key1),

    .align_rst_n(hs_burst_flag),
    .data_in_valid(raw_data_out_valid),
    .data_in(raw_data_out_lane1),

    .data_out_valid(byte_align_valid_lane1),
    .data_out(byte_align_data_lane1)
);

wire multi_lane_align_data_out_valid;
wire [31:0] multi_lane_align_data_out;
wire multi_lane_align_error;


mipi_multi_lane_aligner mipi_multi_lane_aligner_inst(
    .byte_clk(sys_clk),
    .sys_rst_n(key1),

    .align_rst_n(hs_burst_flag), // align reset signal, when reset, all fifo will be clear

    .lanes_data_in_valid({byte_align_valid_lane1, byte_align_valid_lane0}), // {lane1_valid, lane0_valid}
    .lanes_data_in({byte_align_data_lane1, byte_align_data_lane0}), // {lane1[15:0], lane0[15:0]}

    .lanes_data_out_valid(multi_lane_align_data_out_valid),
    .lanes_data_out(multi_lane_align_data_out),
    .align_error(multi_lane_align_error)
);



// reg output_multi_lane_align_data_out_valid;
// reg [15:0] output_multi_lane_align_data_out;
// reg output_hs_burst_flag;
// reg output_toggle;
// always @(posedge sys_clk_x2 or negedge key1) begin
//     if (!key1) begin
//         output_toggle <= 1'b0;
//         output_multi_lane_align_data_out_valid <= 1'b0;
//         output_multi_lane_align_data_out <= 16'h0;
//         output_hs_burst_flag <= 1'b0;
//     end else begin
//         output_toggle <= ~output_toggle;
//         if (output_toggle) begin
//             output_multi_lane_align_data_out_valid <= multi_lane_align_data_out_valid;
//             output_multi_lane_align_data_out <= multi_lane_align_data_out[31:16];
//             output_hs_burst_flag <= hs_burst_flag;
//         end else begin
//             output_multi_lane_align_data_out_valid <= multi_lane_align_data_out_valid;
//             output_multi_lane_align_data_out <= multi_lane_align_data_out[15:0];
//             output_hs_burst_flag <= hs_burst_flag;
//         end
//     end
// end

    // input wire refclk;
    // input wire reset;
    // input wire [35:0] data;
    // output wire clkout;
    // output wire [17:0] dout;

reg [31:0] counter;
always @(posedge sys_clk or negedge key1) begin
    if (!key1) begin
        counter <= 32'h0;
    end else begin
        counter <= counter + 1'b1;
    end
end

// ddr_output ddr_output_inst( // test mode 
//     .clkout ( ddr_output_clk  ),
//     .refclk ( sys_clk         ),
//     .reset  ( ~key1           ),
//     .data   ( { {2{hs_burst_flag}}, {2{counter[10]}}, counter, counter } ), 
//     .dout   ( output_multi_lane_align_data_out )
// );

// wire output_multi_lane_align_data_out_valid = multi_lane_align_data_out_valid;
// ddr_output ddr_output_inst(
//     .clkout ( ddr_output_clk  ),
//     .refclk ( sys_clk         ),
//     .reset  ( ~key1           ),
//     .data   ( {multi_lane_align_data_out_valid, multi_lane_align_data_out[31:16], multi_lane_align_data_out_valid, multi_lane_align_data_out[15:0]} ),
//     .dout   ( output_multi_lane_align_data_out )
// );


// ddr_output __ (.clkop( ), .clkos( ), .clkout( ), .reset( ), .data( ), 
//     .dout( ));

ddr_output ddr_output_inst(
    .clkout ( ddr_output_clk  ),
    .refclk ( sys_clk         ),
    // .clkop  ( sys_clk         ),
    // .clkos  ( CLKOS           ),

    // .clkop  ( CLKOS         ),
    // .clkos  ( sys_clk       ),

    .reset  ( ~key1           ),
    .data   ( {multi_lane_align_data_out_valid, multi_lane_align_data_out[31:16], multi_lane_align_data_out_valid, multi_lane_align_data_out[15:0]} ),
    // .data   ( {multi_lane_align_data_out_valid, counter[31:16], multi_lane_align_data_out_valid, counter[15:0]} ),
    .dout   ( output_multi_lane_align_data_out )
);


endmodule