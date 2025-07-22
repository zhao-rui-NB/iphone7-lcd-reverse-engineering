// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sun Jul 20 20:13:33 2025
//
// Verilog Description of module top
//

module top (clk, rst_n, mipi_rx_clk_n_i, mipi_rx_clk_p_i, mipi_rx_d0_n_io, 
            mipi_rx_d0_p_io, mipi_rx_d1_n_i, mipi_rx_d1_p_i) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(1[8:11])
    input clk;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(3[16:19])
    input rst_n;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(4[16:21])
    inout mipi_rx_clk_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    inout mipi_rx_clk_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    inout mipi_rx_d0_n_io /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(9[16:31])
    inout mipi_rx_d0_p_io /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(10[16:31])
    inout mipi_rx_d1_n_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(11[16:30])
    inout mipi_rx_d1_p_i /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(12[16:30])
    
    wire mipi_rx_clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    wire mipi_rx_clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    
    wire GND_net, VCC_net, clk_c, rst_n_c;
    
    VHI i2 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(4[16:21])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(3[16:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(VCC_net));
    mipi mipi_rx (.clk_c(clk_c), .rst_n_c(rst_n_c), .VCC_net(VCC_net), 
         .GND_net(GND_net), .mipi_rx_clk_p_i(mipi_rx_clk_p_i), .mipi_rx_clk_n_i(mipi_rx_clk_n_i), 
         .mipi_rx_d0_p_io(mipi_rx_d0_p_io), .mipi_rx_d0_n_io(mipi_rx_d0_n_io), 
         .mipi_rx_d1_p_i(mipi_rx_d1_p_i), .mipi_rx_d1_n_i(mipi_rx_d1_n_i)) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(18[10] 61[2])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module mipi
//

module mipi (clk_c, rst_n_c, VCC_net, GND_net, mipi_rx_clk_p_i, mipi_rx_clk_n_i, 
            mipi_rx_d0_p_io, mipi_rx_d0_n_io, mipi_rx_d1_p_i, mipi_rx_d1_n_i) /* synthesis sbp_module="true", syn_module_defined=1 */ ;
    input clk_c;
    input rst_n_c;
    input VCC_net;
    input GND_net;
    inout mipi_rx_clk_p_i;
    inout mipi_rx_clk_n_i;
    inout mipi_rx_d0_p_io;
    inout mipi_rx_d0_n_io;
    inout mipi_rx_d1_p_i;
    inout mipi_rx_d1_n_i;
    
    wire mipi_rx_clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    wire mipi_rx_clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    
    mipi_rx mipi_rx_inst (.clk_c(clk_c), .rst_n_c(rst_n_c), .VCC_net(VCC_net), 
            .GND_net(GND_net), .mipi_rx_clk_p_i(mipi_rx_clk_p_i), .mipi_rx_clk_n_i(mipi_rx_clk_n_i), 
            .mipi_rx_d0_p_io(mipi_rx_d0_p_io), .mipi_rx_d0_n_io(mipi_rx_d0_n_io), 
            .mipi_rx_d1_p_i(mipi_rx_d1_p_i), .mipi_rx_d1_n_i(mipi_rx_d1_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi.v(55[13] 69[82])
    
endmodule
//
// Verilog Description of module mipi_rx
//

module mipi_rx (clk_c, rst_n_c, VCC_net, GND_net, mipi_rx_clk_p_i, 
            mipi_rx_clk_n_i, mipi_rx_d0_p_io, mipi_rx_d0_n_io, mipi_rx_d1_p_i, 
            mipi_rx_d1_n_i) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input rst_n_c;
    input VCC_net;
    input GND_net;
    inout mipi_rx_clk_p_i;
    inout mipi_rx_clk_n_i;
    inout mipi_rx_d0_p_io;
    inout mipi_rx_d0_n_io;
    inout mipi_rx_d1_p_i;
    inout mipi_rx_d1_n_i;
    
    wire mipi_rx_clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    wire mipi_rx_clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    
    \mipi_rx_dphy_rx(PARSER="OFF",NUM_RX_LANE=2,RX_CLK_MODE="HS_ONLY",LANE_ALIGN="ON",WORD_ALIGN="ON",BYTECLK_MHZ=75,FIFO_TYPE="LUT")  dphy_rx_inst (.clk_c(clk_c), 
            .rst_n_c(rst_n_c), .VCC_net(VCC_net), .GND_net(GND_net), .mipi_rx_clk_p_i(mipi_rx_clk_p_i), 
            .mipi_rx_clk_n_i(mipi_rx_clk_n_i), .mipi_rx_d0_p_io(mipi_rx_d0_p_io), 
            .mipi_rx_d0_n_io(mipi_rx_d0_n_io), .mipi_rx_d1_p_i(mipi_rx_d1_p_i), 
            .mipi_rx_d1_n_i(mipi_rx_d1_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx.v(157[1] 215[2])
    
endmodule
//
// Verilog Description of module \mipi_rx_dphy_rx(PARSER="OFF",NUM_RX_LANE=2,RX_CLK_MODE="HS_ONLY",LANE_ALIGN="ON",WORD_ALIGN="ON",BYTECLK_MHZ=75,FIFO_TYPE="LUT") 
//

module \mipi_rx_dphy_rx(PARSER="OFF",NUM_RX_LANE=2,RX_CLK_MODE="HS_ONLY",LANE_ALIGN="ON",WORD_ALIGN="ON",BYTECLK_MHZ=75,FIFO_TYPE="LUT")  (clk_c, 
            rst_n_c, VCC_net, GND_net, mipi_rx_clk_p_i, mipi_rx_clk_n_i, 
            mipi_rx_d0_p_io, mipi_rx_d0_n_io, mipi_rx_d1_p_i, mipi_rx_d1_n_i) /* synthesis syn_module_defined=1 */ ;
    input clk_c;
    input rst_n_c;
    input VCC_net;
    input GND_net;
    inout mipi_rx_clk_p_i;
    inout mipi_rx_clk_n_i;
    inout mipi_rx_d0_p_io;
    inout mipi_rx_d0_n_io;
    inout mipi_rx_d1_p_i;
    inout mipi_rx_d1_n_i;
    
    wire mipi_rx_clk_byte_o /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi.v(29[12:30])
    wire mipi_rx_clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    wire mipi_rx_clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    
    wire mipi_rx_hs_d_en_o, mipi_rx_hs_sync_o, term_d0_en_w;
    wire [15:0]bd0;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(200[32:35])
    wire [15:0]bd1;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(200[37:40])
    wire [15:0]bd2;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(200[42:45])
    wire [15:0]bd3;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(200[47:50])
    
    wire mipi_rx_clk_byte_hs_o, mipi_rx_lp_d0_rx_p_o, mipi_rx_lp_d0_rx_n_o, 
        mipi_rx_lp_d1_rx_p_o, mipi_rx_lp_d1_rx_n_o, lp_d2_rx_p_o, lp_d2_rx_n_o, 
        lp_d3_rx_p_o, lp_d3_rx_n_o, mipi_rx_term_clk_en_o, lp_clk_rx_p, 
        lp_clk_rx_n, hs_settle_en_w;
    wire [3:0]d_sot_det_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(246[20:31])
    wire [3:0]d_sote_det_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(247[20:32])
    wire [15:0]bd0_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(248[20:25])
    wire [15:0]bd1_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(249[20:25])
    wire [15:0]bd2_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(250[20:25])
    wire [15:0]bd3_w;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(251[20:25])
    
    mipi_rx_rx_global_ctrl rx_global_ctrl_inst (.reset_n_i(rst_n_c), .reset_lp_n_i(VCC_net), 
            .reset_byte_fr_n_i(VCC_net), .clk_lp_ctrl_i(GND_net), .clk_byte_hs_i(mipi_rx_clk_byte_hs_o), 
            .clk_byte_i(mipi_rx_clk_byte_o), .clk_byte_fr_i(clk_c), .pll_lock_i(VCC_net), 
            .bd0_i({bd0}), .bd1_i({bd1}), .bd2_i({bd2}), .bd3_i({bd3}), 
            .lp_clk_p_i(lp_clk_rx_p), .lp_clk_n_i(lp_clk_rx_n), .lp_d0_p_i(mipi_rx_lp_d0_rx_p_o), 
            .lp_d0_n_i(mipi_rx_lp_d0_rx_n_o), .lp_d1_p_i(mipi_rx_lp_d1_rx_p_o), 
            .lp_d1_n_i(mipi_rx_lp_d1_rx_n_o), .lp_d2_p_i(lp_d2_rx_p_o), 
            .lp_d2_n_i(lp_d2_rx_n_o), .lp_d3_p_i(lp_d3_rx_p_o), .lp_d3_n_i(lp_d3_rx_n_o), 
            .hs_sync_i(mipi_rx_hs_sync_o), .term_clk_en_o(mipi_rx_term_clk_en_o), 
            .term_d0_en_o(term_d0_en_w), .hs_d0_en_o(mipi_rx_hs_d_en_o), 
            .hs_settle_en_o(hs_settle_en_w)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=157, LSE_RLINE=215 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(349[1] 390[2])
    mipi_rx_dphy_rx_wrap dphy_rx_wrap_inst (.reset_n_i(rst_n_c), .reset_byte_n_i(VCC_net), 
            .reset_byte_fr_n_i(VCC_net), .clk_byte_fr_i(clk_c), .term_d0_en_i(term_d0_en_w), 
            .term_d1_en_i(term_d0_en_w), .term_d2_en_i(term_d0_en_w), .term_d3_en_i(term_d0_en_w), 
            .hs_d0_en_i(mipi_rx_hs_d_en_o), .hs_d1_en_i(mipi_rx_hs_d_en_o), 
            .hs_d2_en_i(mipi_rx_hs_d_en_o), .hs_d3_en_i(mipi_rx_hs_d_en_o), 
            .d_sot_det({d_sot_det_w}), .d_sote_det({d_sote_det_w}), .clk_byte_i(mipi_rx_clk_byte_o), 
            .bd0_i({bd0_w}), .bd1_i({bd1_w}), .bd2_i({bd2_w}), .bd3_i({bd3_w}), 
            .bd0_o({bd0}), .bd1_o({bd1}), .bd2_o({bd2}), .bd3_o({bd3}), 
            .hs_sync_o(mipi_rx_hs_sync_o)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=157, LSE_RLINE=215 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(254[1] 279[2])
    \mipi_rx_dphy_wrapper(NUM_RX_LANE=2)  u_dphy_wrapper (.hs_settle_en_w(hs_settle_en_w), 
            .mipi_rx_hs_d_en_o(mipi_rx_hs_d_en_o), .GND_net(GND_net), .VCC_net(VCC_net), 
            .d_sot_det_w({d_sot_det_w}), .d_sote_det_w({d_sote_det_w}), 
            .bd0_w({bd0_w}), .bd1_w({bd1_w}), .bd2_w({bd2_w}), .bd3_w({bd3_w}), 
            .mipi_rx_term_clk_en_o(mipi_rx_term_clk_en_o), .term_d0_en_w(term_d0_en_w), 
            .lp_clk_rx_p(lp_clk_rx_p), .lp_clk_rx_n(lp_clk_rx_n), .mipi_rx_lp_d0_rx_p_o(mipi_rx_lp_d0_rx_p_o), 
            .mipi_rx_lp_d0_rx_n_o(mipi_rx_lp_d0_rx_n_o), .mipi_rx_lp_d1_rx_p_o(mipi_rx_lp_d1_rx_p_o), 
            .mipi_rx_lp_d1_rx_n_o(mipi_rx_lp_d1_rx_n_o), .lp_d2_rx_p_o(lp_d2_rx_p_o), 
            .lp_d2_rx_n_o(lp_d2_rx_n_o), .lp_d3_rx_p_o(lp_d3_rx_p_o), .lp_d3_rx_n_o(lp_d3_rx_n_o), 
            .mipi_rx_clk_byte_o(mipi_rx_clk_byte_o), .mipi_rx_clk_byte_hs_o(mipi_rx_clk_byte_hs_o), 
            .mipi_rx_clk_p_i(mipi_rx_clk_p_i), .mipi_rx_clk_n_i(mipi_rx_clk_n_i), 
            .mipi_rx_d0_p_io(mipi_rx_d0_p_io), .mipi_rx_d0_n_io(mipi_rx_d0_n_io), 
            .mipi_rx_d1_p_i(mipi_rx_d1_p_i), .mipi_rx_d1_n_i(mipi_rx_d1_n_i)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(297[1] 340[2])
    
endmodule
//
// Verilog Description of module mipi_rx_rx_global_ctrl
//

module mipi_rx_rx_global_ctrl (reset_n_i, reset_lp_n_i, reset_byte_fr_n_i, 
            clk_lp_ctrl_i, clk_byte_hs_i, clk_byte_i, clk_byte_fr_i, 
            pll_lock_i, bd0_i, bd1_i, bd2_i, bd3_i, lp_clk_p_i, 
            lp_clk_n_i, lp_d0_p_i, lp_d0_n_i, lp_d1_p_i, lp_d1_n_i, 
            lp_d2_p_i, lp_d2_n_i, lp_d3_p_i, lp_d3_n_i, hs_sync_i, 
            bd0_o, bd1_o, bd2_o, bd3_o, term_clk_en_o, term_d0_en_o, 
            hs_d0_en_o, term_d1_en_o, hs_d1_en_o, term_d2_en_o, hs_d2_en_o, 
            term_d3_en_o, hs_d3_en_o, hs_sync_o, hs_settle_en_o, lp_hs_state_clk_o, 
            lp_hs_state_d_o);   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(8[8:30])
    input reset_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(9[31:40])
    input reset_lp_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(10[31:43])
    input reset_byte_fr_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(11[31:48])
    input clk_lp_ctrl_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(12[31:44])
    input clk_byte_hs_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(13[31:44])
    input clk_byte_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(14[31:41])
    input clk_byte_fr_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(15[31:44])
    input pll_lock_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(16[31:41])
    input [15:0]bd0_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(18[26:31])
    input [15:0]bd1_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(19[26:31])
    input [15:0]bd2_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(20[26:31])
    input [15:0]bd3_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(21[26:31])
    input lp_clk_p_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(22[31:41])
    input lp_clk_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(23[31:41])
    input lp_d0_p_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(24[31:40])
    input lp_d0_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(25[31:40])
    input lp_d1_p_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(26[31:40])
    input lp_d1_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(27[31:40])
    input lp_d2_p_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(28[31:40])
    input lp_d2_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(29[31:40])
    input lp_d3_p_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(30[31:40])
    input lp_d3_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(31[31:40])
    input hs_sync_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(32[31:40])
    output [15:0]bd0_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(33[26:31])
    output [15:0]bd1_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(34[26:31])
    output [15:0]bd2_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(35[26:31])
    output [15:0]bd3_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(36[26:31])
    output term_clk_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(37[31:44])
    output term_d0_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(38[31:43])
    output hs_d0_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(39[31:41])
    output term_d1_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(40[31:43])
    output hs_d1_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(41[31:41])
    output term_d2_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(42[31:43])
    output hs_d2_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(43[31:41])
    output term_d3_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(44[31:43])
    output hs_d3_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(45[31:41])
    output hs_sync_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(46[31:40])
    output hs_settle_en_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(47[31:45])
    output [1:0]lp_hs_state_clk_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(48[31:48])
    output [1:0]lp_hs_state_d_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_rx_global_ctrl_bb.v(49[31:46])
    
    
    
endmodule
//
// Verilog Description of module mipi_rx_dphy_rx_wrap
//

module mipi_rx_dphy_rx_wrap (reset_n_i, reset_byte_n_i, reset_byte_fr_n_i, 
            clk_byte_fr_i, term_d0_en_i, term_d1_en_i, term_d2_en_i, 
            term_d3_en_i, hs_d0_en_i, hs_d1_en_i, hs_d2_en_i, hs_d3_en_i, 
            d_sot_det, d_sote_det, clk_byte_i, bd0_i, bd1_i, bd2_i, 
            bd3_i, bd0_o, bd1_o, bd2_o, bd3_o, hs_sync_o);   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(8[8:28])
    input reset_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(9[31:40])
    input reset_byte_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(10[31:45])
    input reset_byte_fr_n_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(11[31:48])
    input clk_byte_fr_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(12[31:44])
    input term_d0_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(13[31:43])
    input term_d1_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(14[31:43])
    input term_d2_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(15[31:43])
    input term_d3_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(16[31:43])
    input hs_d0_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(17[31:41])
    input hs_d1_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(18[31:41])
    input hs_d2_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(19[31:41])
    input hs_d3_en_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(20[31:41])
    input [3:0]d_sot_det;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(22[31:40])
    input [3:0]d_sote_det;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(23[31:41])
    input clk_byte_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(26[31:41])
    input [15:0]bd0_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(27[26:31])
    input [15:0]bd1_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(28[26:31])
    input [15:0]bd2_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(29[26:31])
    input [15:0]bd3_i;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(30[26:31])
    output [15:0]bd0_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(31[26:31])
    output [15:0]bd1_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(32[26:31])
    output [15:0]bd2_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(33[26:31])
    output [15:0]bd3_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(34[26:31])
    output hs_sync_o;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx_wrap_bb.v(35[31:40])
    
    
    
endmodule
//
// Verilog Description of module \mipi_rx_dphy_wrapper(NUM_RX_LANE=2) 
//

module \mipi_rx_dphy_wrapper(NUM_RX_LANE=2)  (hs_settle_en_w, mipi_rx_hs_d_en_o, 
            GND_net, VCC_net, d_sot_det_w, d_sote_det_w, bd0_w, bd1_w, 
            bd2_w, bd3_w, mipi_rx_term_clk_en_o, term_d0_en_w, lp_clk_rx_p, 
            lp_clk_rx_n, mipi_rx_lp_d0_rx_p_o, mipi_rx_lp_d0_rx_n_o, mipi_rx_lp_d1_rx_p_o, 
            mipi_rx_lp_d1_rx_n_o, lp_d2_rx_p_o, lp_d2_rx_n_o, lp_d3_rx_p_o, 
            lp_d3_rx_n_o, mipi_rx_clk_byte_o, mipi_rx_clk_byte_hs_o, mipi_rx_clk_p_i, 
            mipi_rx_clk_n_i, mipi_rx_d0_p_io, mipi_rx_d0_n_io, mipi_rx_d1_p_i, 
            mipi_rx_d1_n_i) /* synthesis syn_module_defined=1 */ ;
    input hs_settle_en_w;
    input mipi_rx_hs_d_en_o;
    input GND_net;
    input VCC_net;
    output [3:0]d_sot_det_w;
    output [3:0]d_sote_det_w;
    output [15:0]bd0_w;
    output [15:0]bd1_w;
    output [15:0]bd2_w;
    output [15:0]bd3_w;
    input mipi_rx_term_clk_en_o;
    input term_d0_en_w;
    output lp_clk_rx_p;
    output lp_clk_rx_n;
    output mipi_rx_lp_d0_rx_p_o;
    output mipi_rx_lp_d0_rx_n_o;
    output mipi_rx_lp_d1_rx_p_o;
    output mipi_rx_lp_d1_rx_n_o;
    output lp_d2_rx_p_o;
    output lp_d2_rx_n_o;
    output lp_d3_rx_p_o;
    output lp_d3_rx_n_o;
    output mipi_rx_clk_byte_o;
    output mipi_rx_clk_byte_hs_o;
    inout mipi_rx_clk_p_i;
    inout mipi_rx_clk_n_i;
    inout mipi_rx_d0_p_io;
    inout mipi_rx_d0_n_io;
    inout mipi_rx_d1_p_i;
    inout mipi_rx_d1_n_i;
    
    wire mipi_rx_clk_byte_o /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi.v(29[12:30])
    wire mipi_rx_clk_p_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(8[16:31])
    wire mipi_rx_clk_n_i /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/src/top.v(7[16:31])
    
    wire d_sot_det_o_3__N_3, d2_p_i, d2_n_i, d3_p_i, d3_n_i;
    
    LUT4 hs_settle_en_i_I_0_2_lut (.A(hs_settle_en_w), .B(mipi_rx_hs_d_en_o), 
         .Z(d_sot_det_o_3__N_3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_wrapper.v(238[29:56])
    defparam hs_settle_en_i_I_0_2_lut.init = 16'h8888;
    MIPIDPHYA \MIXEL.mixel_dphy  (.DP0(mipi_rx_d0_p_io), .DN0(mipi_rx_d0_n_io), 
            .DP1(mipi_rx_d1_p_i), .DN1(mipi_rx_d1_n_i), .DP2(d2_p_i), 
            .DN2(d2_n_i), .DP3(d3_p_i), .DN3(d3_n_i), .CKP(mipi_rx_clk_p_i), 
            .CKN(mipi_rx_clk_n_i), .D0RXHSEN(term_d0_en_w), .D0HSDESEREN(d_sot_det_o_3__N_3), 
            .D0RXLPEN(VCC_net), .D0CDEN(VCC_net), .D0TXHSEN(GND_net), 
            .D0HSSEREN(GND_net), .D0HSTXDATA0(GND_net), .D0HSTXDATA1(GND_net), 
            .D0HSTXDATA2(GND_net), .D0HSTXDATA3(GND_net), .D0HSTXDATA4(GND_net), 
            .D0HSTXDATA5(GND_net), .D0HSTXDATA6(GND_net), .D0HSTXDATA7(GND_net), 
            .D0HSTXDATA8(GND_net), .D0HSTXDATA9(GND_net), .D0HSTXDATA10(GND_net), 
            .D0HSTXDATA11(GND_net), .D0HSTXDATA12(GND_net), .D0HSTXDATA13(GND_net), 
            .D0HSTXDATA14(GND_net), .D0HSTXDATA15(GND_net), .D0TXHSPD(VCC_net), 
            .D0DTXLPP(GND_net), .D0DTXLPN(GND_net), .D0TXLPEN(GND_net), 
            .D0HSRXDATA0(bd0_w[0]), .D0HSRXDATA1(bd0_w[1]), .D0HSRXDATA2(bd0_w[2]), 
            .D0HSRXDATA3(bd0_w[3]), .D0HSRXDATA4(bd0_w[4]), .D0HSRXDATA5(bd0_w[5]), 
            .D0HSRXDATA6(bd0_w[6]), .D0HSRXDATA7(bd0_w[7]), .D0HSRXDATA8(bd0_w[8]), 
            .D0HSRXDATA9(bd0_w[9]), .D0HSRXDATA10(bd0_w[10]), .D0HSRXDATA11(bd0_w[11]), 
            .D0HSRXDATA12(bd0_w[12]), .D0HSRXDATA13(bd0_w[13]), .D0HSRXDATA14(bd0_w[14]), 
            .D0HSRXDATA15(bd0_w[15]), .D0SYNC(d_sot_det_w[0]), .D0ERRSYNC(d_sote_det_w[0]), 
            .D0DRXLPP(mipi_rx_lp_d0_rx_p_o), .D0DRXLPN(mipi_rx_lp_d0_rx_n_o), 
            .D1RXHSEN(term_d0_en_w), .D1HSDESEREN(d_sot_det_o_3__N_3), .D1RXLPEN(VCC_net), 
            .D1CDEN(GND_net), .D1TXHSEN(GND_net), .D1HSSEREN(GND_net), 
            .D1HSTXDATA0(GND_net), .D1HSTXDATA1(GND_net), .D1HSTXDATA2(GND_net), 
            .D1HSTXDATA3(GND_net), .D1HSTXDATA4(GND_net), .D1HSTXDATA5(GND_net), 
            .D1HSTXDATA6(GND_net), .D1HSTXDATA7(GND_net), .D1HSTXDATA8(GND_net), 
            .D1HSTXDATA9(GND_net), .D1HSTXDATA10(GND_net), .D1HSTXDATA11(GND_net), 
            .D1HSTXDATA12(GND_net), .D1HSTXDATA13(GND_net), .D1HSTXDATA14(GND_net), 
            .D1HSTXDATA15(GND_net), .D1TXHSPD(VCC_net), .D1DTXLPP(GND_net), 
            .D1DTXLPN(GND_net), .D1TXLPEN(GND_net), .D1HSRXDATA0(bd1_w[0]), 
            .D1HSRXDATA1(bd1_w[1]), .D1HSRXDATA2(bd1_w[2]), .D1HSRXDATA3(bd1_w[3]), 
            .D1HSRXDATA4(bd1_w[4]), .D1HSRXDATA5(bd1_w[5]), .D1HSRXDATA6(bd1_w[6]), 
            .D1HSRXDATA7(bd1_w[7]), .D1HSRXDATA8(bd1_w[8]), .D1HSRXDATA9(bd1_w[9]), 
            .D1HSRXDATA10(bd1_w[10]), .D1HSRXDATA11(bd1_w[11]), .D1HSRXDATA12(bd1_w[12]), 
            .D1HSRXDATA13(bd1_w[13]), .D1HSRXDATA14(bd1_w[14]), .D1HSRXDATA15(bd1_w[15]), 
            .D1SYNC(d_sot_det_w[1]), .D1ERRSYNC(d_sote_det_w[1]), .D1DRXLPP(mipi_rx_lp_d1_rx_p_o), 
            .D1DRXLPN(mipi_rx_lp_d1_rx_n_o), .D2RXHSEN(GND_net), .D2HSDESEREN(GND_net), 
            .D2RXLPEN(VCC_net), .D2CDEN(GND_net), .D2TXHSEN(GND_net), 
            .D2HSSEREN(GND_net), .D2HSTXDATA0(GND_net), .D2HSTXDATA1(GND_net), 
            .D2HSTXDATA2(GND_net), .D2HSTXDATA3(GND_net), .D2HSTXDATA4(GND_net), 
            .D2HSTXDATA5(GND_net), .D2HSTXDATA6(GND_net), .D2HSTXDATA7(GND_net), 
            .D2HSTXDATA8(GND_net), .D2HSTXDATA9(GND_net), .D2HSTXDATA10(GND_net), 
            .D2HSTXDATA11(GND_net), .D2HSTXDATA12(GND_net), .D2HSTXDATA13(GND_net), 
            .D2HSTXDATA14(GND_net), .D2HSTXDATA15(GND_net), .D2TXHSPD(VCC_net), 
            .D2DTXLPP(GND_net), .D2DTXLPN(GND_net), .D2TXLPEN(GND_net), 
            .D2HSRXDATA0(bd2_w[0]), .D2HSRXDATA1(bd2_w[1]), .D2HSRXDATA2(bd2_w[2]), 
            .D2HSRXDATA3(bd2_w[3]), .D2HSRXDATA4(bd2_w[4]), .D2HSRXDATA5(bd2_w[5]), 
            .D2HSRXDATA6(bd2_w[6]), .D2HSRXDATA7(bd2_w[7]), .D2HSRXDATA8(bd2_w[8]), 
            .D2HSRXDATA9(bd2_w[9]), .D2HSRXDATA10(bd2_w[10]), .D2HSRXDATA11(bd2_w[11]), 
            .D2HSRXDATA12(bd2_w[12]), .D2HSRXDATA13(bd2_w[13]), .D2HSRXDATA14(bd2_w[14]), 
            .D2HSRXDATA15(bd2_w[15]), .D2SYNC(d_sot_det_w[2]), .D2ERRSYNC(d_sote_det_w[2]), 
            .D2DRXLPP(lp_d2_rx_p_o), .D2DRXLPN(lp_d2_rx_n_o), .D3RXHSEN(GND_net), 
            .D3HSDESEREN(GND_net), .D3RXLPEN(VCC_net), .D3CDEN(GND_net), 
            .D3TXHSEN(GND_net), .D3HSSEREN(GND_net), .D3HSTXDATA0(GND_net), 
            .D3HSTXDATA1(GND_net), .D3HSTXDATA2(GND_net), .D3HSTXDATA3(GND_net), 
            .D3HSTXDATA4(GND_net), .D3HSTXDATA5(GND_net), .D3HSTXDATA6(GND_net), 
            .D3HSTXDATA7(GND_net), .D3HSTXDATA8(GND_net), .D3HSTXDATA9(GND_net), 
            .D3HSTXDATA10(GND_net), .D3HSTXDATA11(GND_net), .D3HSTXDATA12(GND_net), 
            .D3HSTXDATA13(GND_net), .D3HSTXDATA14(GND_net), .D3HSTXDATA15(GND_net), 
            .D3TXHSPD(VCC_net), .D3DTXLPP(GND_net), .D3DTXLPN(GND_net), 
            .D3TXLPEN(GND_net), .D3HSRXDATA0(bd3_w[0]), .D3HSRXDATA1(bd3_w[1]), 
            .D3HSRXDATA2(bd3_w[2]), .D3HSRXDATA3(bd3_w[3]), .D3HSRXDATA4(bd3_w[4]), 
            .D3HSRXDATA5(bd3_w[5]), .D3HSRXDATA6(bd3_w[6]), .D3HSRXDATA7(bd3_w[7]), 
            .D3HSRXDATA8(bd3_w[8]), .D3HSRXDATA9(bd3_w[9]), .D3HSRXDATA10(bd3_w[10]), 
            .D3HSRXDATA11(bd3_w[11]), .D3HSRXDATA12(bd3_w[12]), .D3HSRXDATA13(bd3_w[13]), 
            .D3HSRXDATA14(bd3_w[14]), .D3HSRXDATA15(bd3_w[15]), .D3SYNC(d_sot_det_w[3]), 
            .D3ERRSYNC(d_sote_det_w[3]), .D3DRXLPP(lp_d3_rx_p_o), .D3DRXLPN(lp_d3_rx_n_o), 
            .CLKRXHSEN(mipi_rx_term_clk_en_o), .CLKRXLPEN(VCC_net), .CLKCDEN(VCC_net), 
            .CLKTXHSEN(GND_net), .CLKTXHSGATE(GND_net), .CLKTXHSPD(VCC_net), 
            .CLKDTXLPP(GND_net), .CLKDTXLPN(GND_net), .CLKTXLPEN(GND_net), 
            .PDDPHY(GND_net), .PDPLL(VCC_net), .PDBIAS(GND_net), .PDCKG(GND_net), 
            .LBEN(GND_net), .CLKREF(GND_net), .HSBYTECLKD(mipi_rx_clk_byte_o), 
            .CLKHSBYTE(mipi_rx_clk_byte_hs_o), .CLKDRXLPP(lp_clk_rx_p), 
            .CLKDRXLPN(lp_clk_rx_n)) /* synthesis HS_MODE="RX", DIR_PIN_DN3="INPUT", DIR_PIN_DP3="INPUT", DIR_PIN_DN2="INPUT", DIR_PIN_DP2="INPUT", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", DIR_PIN_DN0="INPUT", DIR_PIN_DP0="INPUT", FREQUENCY_PIN_HSBYTECLKD="75.0", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=1, LSE_RCOL=2, LSE_LLINE=297, LSE_RLINE=340 */ ;   // c:/users/rui/desktop/iphone_screen/crosslink_fpga_mipi_prj/iphone7_mipi_v3/ip/mipi/mipi_rx/mipi_rx_dphy_rx.v(297[1] 340[2])
    defparam \MIXEL.mixel_dphy .HSEL = 1;
    defparam \MIXEL.mixel_dphy .HS_16BIT_EN = 1;
    defparam \MIXEL.mixel_dphy .CN = 5'b00000;
    defparam \MIXEL.mixel_dphy .CM = 8'b00000000;
    defparam \MIXEL.mixel_dphy .CO = 2'b00;
    defparam \MIXEL.mixel_dphy .PLL_TST = 4'b1001;
    defparam \MIXEL.mixel_dphy .ENP_DESER = 1'b1;
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Sun Jul 20 20:25:13 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Sun Jul 20 20:25:13 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Sun Jul 20 20:26:39 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Sun Jul 20 20:26:39 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Sun Jul 20 21:02:17 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Sun Jul 20 21:02:17 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 21 23:28:31 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Mon Jul 21 23:28:31 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 21 23:33:31 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Mon Jul 21 23:33:31 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 22 00:08:52 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Tue Jul 22 00:08:52 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 22 00:42:59 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Tue Jul 22 00:42:59 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 22 00:50:52 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1121121164d4da (WrAddress, RdAddress, Data, 
    WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [0:0] WrAddress;
    input wire [0:0] RdAddress;
    input wire [0:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [0:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_B = 1 ;
    defparam pmi_ram_dpLbnonesadr1121121164d4da_0_0_0.DATA_WIDTH_A = 1 ;
    DP8KE pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 (.DIA8(scuba_vlo), .DIA7(scuba_vlo), 
        .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(scuba_vlo), .DIA3(scuba_vlo), 
        .DIA2(scuba_vlo), .DIA1(scuba_vlo), .DIA0(Data[0]), .ADA12(scuba_vlo), 
        .ADA11(scuba_vlo), .ADA10(scuba_vlo), .ADA9(scuba_vlo), .ADA8(scuba_vlo), 
        .ADA7(scuba_vlo), .ADA6(scuba_vlo), .ADA5(scuba_vlo), .ADA4(scuba_vlo), 
        .ADA3(scuba_vlo), .ADA2(scuba_vlo), .ADA1(scuba_vlo), .ADA0(WrAddress[0]), 
        .CEA(WrClockEn), .OCEA(WrClockEn), .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), 
        .CSA1(scuba_vlo), .CSA0(scuba_vlo), .RSTA(Reset), .DIB8(scuba_vlo), 
        .DIB7(scuba_vlo), .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), 
        .DIB3(scuba_vlo), .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), 
        .ADB12(scuba_vlo), .ADB11(scuba_vlo), .ADB10(scuba_vlo), .ADB9(scuba_vlo), 
        .ADB8(scuba_vlo), .ADB7(scuba_vlo), .ADB6(scuba_vlo), .ADB5(scuba_vlo), 
        .ADB4(scuba_vlo), .ADB3(scuba_vlo), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(RdAddress[0]), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(), 
        .DOB3(), .DOB2(), .DOB1(), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.14.0.75.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.14/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 2048 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr33112048331120481218f65e -pmi -lang verilog  */
/* Tue Jul 22 00:50:52 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr33112048331120481218f65e (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;
    wire raddr10_ff;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr10_ff2;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), .DOB6(mdout1_0_6), 
        .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), .DOB2(mdout1_0_2), 
        .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), .DOB6(mdout1_0_24), 
        .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), .DOB2(mdout1_0_20), 
        .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), .DOB4(mdout1_0_31), 
        .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), .DOB6(mdout1_1_6), 
        .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), .DOB2(mdout1_1_2), 
        .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), .DOB6(mdout1_1_24), 
        .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), .DOB2(mdout1_1_20), 
        .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(WrAddress[10]), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(RdAddress[10]), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), .DOB4(mdout1_1_31), 
        .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), .Z(Q[23]));

    MUX21 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr33112048331120481218f65e__PMIP__2048__33__33__-1B
    // exemplar attribute pmi_ram_dpLbnonesadr33112048331120481218f65e_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
