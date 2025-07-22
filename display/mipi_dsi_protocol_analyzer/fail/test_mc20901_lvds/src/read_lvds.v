module read_lvds(
    input wire rst_n,

    output wire hs_burst_flag,

    input wire mipi_lp_mode_key,
    output wire div_clk,


    // hs high speed differential signals, channel A-E
    input wire hs_a_p,
    input wire hs_a_n,
    input wire hs_b_p,
    input wire hs_b_n,
    input wire hs_c_p,
    input wire hs_c_n,
    input wire hs_d_p,
    input wire hs_d_n,
    input wire hs_e_p,
    input wire hs_e_n,

    input wire lp_e_p,
    input wire lp_e_n,

    // gpio
    output wire [1:0] mc20901_gpio,
    output wire mc20901_gpio_bta,
    output wire mc20901_pinswap
);


assign mc20901_gpio = (mipi_lp_mode_key==1'b0) ? 2'b10 : 2'b01; // 10: lp mode, 01: hs mode
assign mc20901_gpio_bta = 1'b0; 
assign mc20901_pinswap = 1'b0;


// TLVDS_IBUF lvds_ibuf0(.O(lane_ck), .I(hs_c_p), .IB(hs_c_n));
// TLVDS_IBUF lvds_ibuf1(.O(lane_data0), .I(hs_e_p), .IB(hs_e_n));
// TLVDS_IBUF lvds_ibuf2(.O(lane_data1), .I(hs_d_p), .IB(hs_d_n));
// TLVDS_IBUF lvds_ibuf3(.O(lane_data2), .I(hs_b_p), .IB(hs_b_n));
// TLVDS_IBUF lvds_ibuf4(.O(lane_data3), .I(hs_a_p), .IB(hs_a_n));


MIPI_RX_Advance_Top mipi_rx(
    .reset_n(rst_n), //input reset_n
    .HS_CLK_P(hs_a_p), //input HS_CLK_P
    .HS_CLK_N(hs_a_n), //input HS_CLK_N
    .clk_byte_out(div_clk), //output clk_byte_out
    .HS_DATA2_P(hs_c_p), //input HS_DATA2_P
    .HS_DATA2_N(hs_c_n), //input HS_DATA2_N
    .data_out2(ddr_bits_lane2_buf), //output [7:0] data_out2
    .HS_DATA1_P(hs_d_p), //input HS_DATA1_P
    .HS_DATA1_N(hs_d_n), //input HS_DATA1_N
    .data_out1(ddr_bits_lane1_buf), //output [7:0] data_out1
    .HS_DATA0_P(hs_e_p), //input HS_DATA0_P
    .HS_DATA0_N(hs_e_n), //input HS_DATA0_N
    .data_out0(ddr_bits_lane0_buf), //output [7:0] data_out0
    .hs_en(1), //input hs_en
    .clk_term_en(1), //input clk_term_en
    .data_term_en(1), //input data_term_en
    .ready(ready) //output ready
);





// wire lane_ck, lane_data0, lane_data1, lane_data2, lane_data3, lane_data4;

// TLVDS_IBUF lvds_ibuf0(.O(lane_ck), .I(hs_c_p), .IB(hs_c_n));
// TLVDS_IBUF lvds_ibuf1(.O(lane_data0), .I(hs_e_p), .IB(hs_e_n));
// TLVDS_IBUF lvds_ibuf2(.O(lane_data1), .I(hs_d_p), .IB(hs_d_n));
// TLVDS_IBUF lvds_ibuf3(.O(lane_data2), .I(hs_a_p), .IB(hs_a_n));
// TLVDS_IBUF lvds_ibuf4(.O(lane_data3), .I(hs_b_p), .IB(hs_b_n));

// wire [1:0] ddr_bits_lane0;
// wire [1:0] ddr_bits_lane1;
// wire [1:0] ddr_bits_lane2;
// wire [1:0] ddr_bits_lane3;

// IDDR iddr0(.Q0(ddr_bits_lane0[0]), .Q1(ddr_bits_lane0[1]), .D(lane_data0), .CLK(lane_ck));
// IDDR iddr1(.Q0(ddr_bits_lane1[0]), .Q1(ddr_bits_lane1[1]), .D(lane_data1), .CLK(lane_ck));
// IDDR iddr2(.Q0(ddr_bits_lane2[0]), .Q1(ddr_bits_lane2[1]), .D(lane_data2), .CLK(lane_ck));
// IDDR iddr3(.Q0(ddr_bits_lane3[0]), .Q1(ddr_bits_lane3[1]), .D(lane_data3), .CLK(lane_ck));

wire [7:0] ddr_bits_lane0_buf;
wire [7:0] ddr_bits_lane1_buf;
wire [7:0] ddr_bits_lane2_buf;
wire [7:0] ddr_bits_lane3_buf;


reg [7:0] ddr_bits_lane0_buf_d;
reg [7:0] ddr_bits_lane1_buf_d;
reg [7:0] ddr_bits_lane2_buf_d;
reg [7:0] ddr_bits_lane3_buf_d;

always @ (posedge div_clk or negedge rst_n) begin
    if (!rst_n) begin
        ddr_bits_lane0_buf_d <= 8'b0;
        ddr_bits_lane1_buf_d <= 8'b0;
        ddr_bits_lane2_buf_d <= 8'b0;
        ddr_bits_lane3_buf_d <= 8'b0;
    end else begin
        ddr_bits_lane0_buf_d <= ddr_bits_lane0_buf;
        ddr_bits_lane1_buf_d <= ddr_bits_lane1_buf;
        ddr_bits_lane2_buf_d <= ddr_bits_lane2_buf;
        ddr_bits_lane3_buf_d <= ddr_bits_lane3_buf;
    end
end



// IDES8 uut0(
//     .Q0(ddr_bits_lane0_buf[0]),
//     .Q1(ddr_bits_lane0_buf[1]),
//     .Q2(ddr_bits_lane0_buf[2]),
//     .Q3(ddr_bits_lane0_buf[3]),
//     .Q4(ddr_bits_lane0_buf[4]),
//     .Q5(ddr_bits_lane0_buf[5]),
//     .Q6(ddr_bits_lane0_buf[6]),
//     .Q7(ddr_bits_lane0_buf[7]),
//     .D(lane_data0),
//     .FCLK(lane_ck),
//     .PCLK(div_clk),
//     .CALIB(0),
//     .RESET(0)
// );
// defparam uut0. GSREN="false";
// defparam uut0. LSREN ="true";

// IDES8 uut1(
//     .Q0(ddr_bits_lane1_buf[0]),
//     .Q1(ddr_bits_lane1_buf[1]),
//     .Q2(ddr_bits_lane1_buf[2]),
//     .Q3(ddr_bits_lane1_buf[3]),
//     .Q4(ddr_bits_lane1_buf[4]),
//     .Q5(ddr_bits_lane1_buf[5]),
//     .Q6(ddr_bits_lane1_buf[6]),
//     .Q7(ddr_bits_lane1_buf[7]),
//     .D(lane_data1),
//     .FCLK(lane_ck),
//     .PCLK(div_clk),
//     .CALIB(0),
//     .RESET(0)
// );
// defparam uut1. GSREN="false";
// defparam uut1. LSREN ="true";


// IDES8 uut2(
//     .Q0(ddr_bits_lane2_buf[0]),
//     .Q1(ddr_bits_lane2_buf[1]),
//     .Q2(ddr_bits_lane2_buf[2]),
//     .Q3(ddr_bits_lane2_buf[3]),
//     .Q4(ddr_bits_lane2_buf[4]),
//     .Q5(ddr_bits_lane2_buf[5]),
//     .Q6(ddr_bits_lane2_buf[6]),
//     .Q7(ddr_bits_lane2_buf[7]),
//     .D(lane_data2),
//     .FCLK(lane_ck),
//     .PCLK(div_clk),
//     .CALIB(0),
//     .RESET(0)
// );
// defparam uut2. GSREN="false";
// defparam uut2. LSREN ="true";


// reg [1:0] cnt;
// reg reg_div_clk;

// assign div_clk = reg_div_clk;

//
    // always@(posedge lane_ck or negedge rst_n) begin
    //     if (!rst_n) begin
    //         ddr_bits_lane0_buf <= 8'b0;
    //         ddr_bits_lane1_buf <= 8'b0;
    //         ddr_bits_lane2_buf <= 8'b0;
    //         ddr_bits_lane3_buf <= 8'b0;
    //         cnt <= 2'b0;
    //     end else begin
    //         cnt <= cnt + 1'b1;
    //         ddr_bits_lane0_buf <= {ddr_bits_lane0[1:0],ddr_bits_lane0_buf[7:2]};
    //         ddr_bits_lane1_buf <= {ddr_bits_lane1[1:0],ddr_bits_lane1_buf[7:2]};
    //         ddr_bits_lane2_buf <= {ddr_bits_lane2[1:0],ddr_bits_lane2_buf[7:2]};
    //         ddr_bits_lane3_buf <= {ddr_bits_lane3[1:0],ddr_bits_lane3_buf[7:2]};
    //     end
    // end


//
    // always@(posedge lane_ck or negedge rst_n) begin
    //     if (!rst_n) begin
    //         ddr_bits_lane0_buf <= 8'b0;
    //         ddr_bits_lane1_buf <= 8'b0;
    //         ddr_bits_lane2_buf <= 8'b0;
    //         ddr_bits_lane3_buf <= 8'b0;
    //         cnt <= 2'b0;
    //         reg_div_clk <= 1'b0;
    //     end else begin
    //         cnt <= cnt + 1'b1;

    //         if (cnt == 2'b00) begin
    //             ddr_bits_lane0_buf[1:0] <= ddr_bits_lane0;
    //             ddr_bits_lane1_buf[1:0] <= ddr_bits_lane1;
    //             ddr_bits_lane2_buf[1:0] <= ddr_bits_lane2;
    //             ddr_bits_lane3_buf[1:0] <= ddr_bits_lane3;
    //             reg_div_clk <= 1'b1;
    //         end else if (cnt == 2'b01) begin
    //             ddr_bits_lane0_buf[3:2] <= ddr_bits_lane0_buf[1:0];
    //             ddr_bits_lane1_buf[3:2] <= ddr_bits_lane1_buf[1:0];
    //             ddr_bits_lane2_buf[3:2] <= ddr_bits_lane2_buf[1:0];
    //             ddr_bits_lane3_buf[3:2] <= ddr_bits_lane3_buf[1:0];
    //             reg_div_clk <= 1'b0;
    //         end else if (cnt == 2'b10) begin
    //             ddr_bits_lane0_buf[5:4] <= ddr_bits_lane0_buf[3:2];
    //             ddr_bits_lane1_buf[5:4] <= ddr_bits_lane1_buf[3:2];
    //             ddr_bits_lane2_buf[5:4] <= ddr_bits_lane2_buf[3:2];
    //             ddr_bits_lane3_buf[5:4] <= ddr_bits_lane3_buf[3:2];
    //             reg_div_clk <= 1'b0;
    //         end else if (cnt == 2'b11) begin
    //             ddr_bits_lane0_buf[7:6] <= ddr_bits_lane0_buf[5:4];
    //             ddr_bits_lane1_buf[7:6] <= ddr_bits_lane1_buf[5:4];
    //             ddr_bits_lane2_buf[7:6] <= ddr_bits_lane2_buf[5:4];
    //             ddr_bits_lane3_buf[7:6] <= ddr_bits_lane3_buf[5:4];
    //             reg_div_clk <= 1'b1;
    //         end
    //     end
    // end

mipi_lane_state_detection mipi_lane_state_detection_inst(
    .sys_clk(div_clk),
    .sys_rst_n(rst_n),
    .lp_lane_data0_i( {lp_e_p, lp_e_n} ), // mipi lp data0
    .hs_burst_flag(hs_burst_flag)
);


// CLKDIV ckdiv (
//     .CLKOUT(div_clk),
//     .HCLKIN(lane_ck),
//     .RESETN(1'b1),
//     .CALIB(1'b0)
// );
// defparam ckdiv.DIV_MODE = "4";
// defparam ckdiv.GSREN = "false";


endmodule

    