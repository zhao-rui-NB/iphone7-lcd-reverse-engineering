// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Jul 14 12:17:48 2025
//
// Verilog Description of module top
//

module top (clk_p, clk_n, data_p, data_n, key1, clk_50m, sys_clk_div2, 
            hs_burst_flag, sys_clk, ddr_output_clk, output_multi_lane_align_data_out) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(1[8:11])
    inout clk_p /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(2[11:16])
    inout clk_n /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(3[11:16])
    inout [1:0]data_p;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(4[17:23])
    inout [1:0]data_n;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(5[17:23])
    input key1;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(7[11:15])
    input clk_50m;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(10[11:18])
    output sys_clk_div2;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(11[16:28])
    output hs_burst_flag;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(13[17:30])
    output sys_clk;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    output ddr_output_clk /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(24[12:26])
    output [16:0]output_multi_lane_align_data_out;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(26[19:51])
    
    wire clk_p /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(2[11:16])
    wire clk_n /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(3[11:16])
    wire clk_50m_c /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(10[11:18])
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    wire clk_50m_pll_in /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(38[6:20])
    wire rxhsbyteclk /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(99[21:32])
    
    wire GND_net, VCC_net, key1_c, sys_clk_div2_c, hs_burst_flag_c, 
        d0_cd, d0_rxlpn, d0_rxlpp;
    wire [31:0]q;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(64[13:14])
    
    wire dphy_raw_fifo_Reset, dphy_raw_fifo_RdEn;
    wire [31:0]dphy_raw_fifo_Q;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(118[13:28])
    
    wire dphy_raw_fifo_Empty, raw_data_out_valid;
    wire [15:0]raw_data_out_lane0;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(147[13:31])
    wire [15:0]raw_data_out_lane1;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(148[13:31])
    
    wire byte_align_valid_lane0, byte_align_valid_lane1;
    wire [15:0]byte_align_data_lane0;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(174[13:34])
    wire [15:0]byte_align_data_lane1;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(175[13:34])
    
    wire multi_lane_align_data_out_valid;
    wire [31:0]multi_lane_align_data_out;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(202[13:38])
    
    wire sys_clk_div2_N_4, sys_rst_n_N_10, hs_burst_flag_N_67, align_rst_n_d, 
        seq_offect_valid, sync_found, n8, n8_adj_518, data_out_valid_N_225, 
        seq_offect_valid_adj_519, n6111;
    wire [31:0]os_data_15__N_127_adj_554;
    
    wire data_out_valid_N_225_adj_520;
    wire [15:0]data_out_15__N_208_adj_558;
    
    wire n7855, n7850, buf_clkout, buf_douto16, buf_douto15, buf_douto14, 
        buf_douto13, buf_douto12, buf_douto11, buf_douto10, buf_douto9, 
        buf_douto8, buf_douto7, buf_douto6, buf_douto5, buf_douto4, 
        buf_douto3, buf_douto2, buf_douto1, buf_douto0, n7926, sys_clk_c_enable_112, 
        sys_clk_c_enable_78, n2046, n38, n31, sys_clk_c_enable_39, 
        n6704, sys_clk_c_enable_37, n2047, n6105, n6157, n7283, 
        n7179;
    
    VHI i2 (.Z(VCC_net));
    mipi_rx mipi_rx_inst (.VCC_net(VCC_net), .hs_burst_flag_c(hs_burst_flag_c), 
            .GND_net(GND_net), .lp_lane_data0({d0_rxlpp, d0_rxlpn}), .rxhsbyteclk(rxhsbyteclk), 
            .q({q}), .clk_n(clk_n), .clk_p(clk_p), .data_n({data_n}), 
            .data_p({data_p}), .d0_cd(d0_cd)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(68[9] 102[2])
    FD1S3AX sys_clk_div2_11 (.D(sys_clk_div2_N_4), .CK(sys_clk_c), .Q(sys_clk_div2_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(55[8] 57[4])
    defparam sys_clk_div2_11.GSR = "DISABLED";
    PLLREFCS PLLREFCS_inst (.CLK0(clk_50m_c), .CLK1(GND_net), .SEL(GND_net), 
            .PLLCSOUT(clk_50m_pll_in)) /* synthesis syn_instantiated=1 */ ;
    mipi_raw_data_controller mipi_raw_data_controller_inst (.raw_data_out_lane0({raw_data_out_lane0}), 
            .sys_clk_c(sys_clk_c), .dphy_raw_fifo_Q({dphy_raw_fifo_Q}), 
            .raw_data_out_lane1({raw_data_out_lane1}), .dphy_raw_fifo_Reset(dphy_raw_fifo_Reset), 
            .hs_burst_flag_N_67(hs_burst_flag_N_67), .raw_data_out_valid(raw_data_out_valid), 
            .dphy_raw_fifo_RdEn(dphy_raw_fifo_RdEn), .dphy_raw_fifo_Empty(dphy_raw_fifo_Empty), 
            .seq_offect_valid(seq_offect_valid_adj_519), .n38(n38), .sys_clk_c_enable_37(sys_clk_c_enable_37), 
            .align_rst_n_d(align_rst_n_d), .n2047(n2047), .seq_offect_valid_adj_4(seq_offect_valid), 
            .n2046(n2046), .sync_found(sync_found), .sys_clk_c_enable_78(sys_clk_c_enable_78), 
            .n8(n8_adj_518), .n6157(n6157), .n6704(n6704), .data_out_valid_N_225(data_out_valid_N_225), 
            .sys_clk_c_enable_39(sys_clk_c_enable_39)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(150[26] 168[2])
    ddr_output ddr_output_inst (.sys_clk_c(sys_clk_c), .sys_rst_n_N_10(sys_rst_n_N_10), 
            .multi_lane_align_data_out({multi_lane_align_data_out}), .buf_douto15(buf_douto15), 
            .buf_douto14(buf_douto14), .buf_douto13(buf_douto13), .buf_douto12(buf_douto12), 
            .buf_douto11(buf_douto11), .buf_douto10(buf_douto10), .buf_douto9(buf_douto9), 
            .buf_douto8(buf_douto8), .buf_douto7(buf_douto7), .buf_douto6(buf_douto6), 
            .buf_douto5(buf_douto5), .buf_douto4(buf_douto4), .buf_douto3(buf_douto3), 
            .buf_douto2(buf_douto2), .buf_douto1(buf_douto1), .buf_douto0(buf_douto0), 
            .GND_net(GND_net), .VCC_net(VCC_net), .buf_clkout(buf_clkout), 
            .multi_lane_align_data_out_valid(multi_lane_align_data_out_valid), 
            .buf_douto16(buf_douto16)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    IB key1_pad (.I(key1), .O(key1_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(7[11:15])
    OB Inst2_OB (.I(buf_clkout), .O(ddr_output_clk)) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(131[8:45])
    OB Inst1_OB16 (.I(buf_douto16), .O(output_multi_lane_align_data_out[16])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(134[8:50])
    OB Inst1_OB15 (.I(buf_douto15), .O(output_multi_lane_align_data_out[15])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(137[8:50])
    OB Inst1_OB14 (.I(buf_douto14), .O(output_multi_lane_align_data_out[14])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(140[8:50])
    OB Inst1_OB13 (.I(buf_douto13), .O(output_multi_lane_align_data_out[13])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(143[8:50])
    OB Inst1_OB12 (.I(buf_douto12), .O(output_multi_lane_align_data_out[12])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(146[8:50])
    OB Inst1_OB11 (.I(buf_douto11), .O(output_multi_lane_align_data_out[11])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(149[8:50])
    OB Inst1_OB10 (.I(buf_douto10), .O(output_multi_lane_align_data_out[10])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(152[8:50])
    OB Inst1_OB9 (.I(buf_douto9), .O(output_multi_lane_align_data_out[9])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(155[8:47])
    OB Inst1_OB8 (.I(buf_douto8), .O(output_multi_lane_align_data_out[8])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(158[8:47])
    OB Inst1_OB7 (.I(buf_douto7), .O(output_multi_lane_align_data_out[7])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(161[8:47])
    OB Inst1_OB6 (.I(buf_douto6), .O(output_multi_lane_align_data_out[6])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(164[8:47])
    OB Inst1_OB5 (.I(buf_douto5), .O(output_multi_lane_align_data_out[5])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(167[8:47])
    OB Inst1_OB4 (.I(buf_douto4), .O(output_multi_lane_align_data_out[4])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(170[8:47])
    OB Inst1_OB3 (.I(buf_douto3), .O(output_multi_lane_align_data_out[3])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(173[8:47])
    OB Inst1_OB2 (.I(buf_douto2), .O(output_multi_lane_align_data_out[2])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(176[8:47])
    OB Inst1_OB1 (.I(buf_douto1), .O(output_multi_lane_align_data_out[1])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(179[8:47])
    OB Inst1_OB0 (.I(buf_douto0), .O(output_multi_lane_align_data_out[0])) /* synthesis IO_TYPE="LVTTL33", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/output_io/ddr_output/ddr_output.v(182[8:47])
    OB sys_clk_pad (.I(sys_clk_c), .O(sys_clk));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    OB hs_burst_flag_pad (.I(hs_burst_flag_c), .O(hs_burst_flag));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(13[17:30])
    OB sys_clk_div2_pad (.I(sys_clk_div2_c), .O(sys_clk_div2));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(11[16:28])
    IB clk_50m_pad (.I(clk_50m), .O(clk_50m_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(10[11:18])
    LUT4 sys_rst_n_I_0_1_lut (.A(key1_c), .Z(sys_rst_n_N_10)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(36[9:19])
    defparam sys_rst_n_I_0_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(key1_c));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    pll_sys_clk pll_sys_clk_inst (.clk_50m_pll_in(clk_50m_pll_in), .sys_clk_c(sys_clk_c), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(48[13] 52[2])
    VLO i1 (.Z(GND_net));
    LUT4 sys_clk_div2_I_0_1_lut (.A(sys_clk_div2_c), .Z(sys_clk_div2_N_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(56[21:34])
    defparam sys_clk_div2_I_0_1_lut.init = 16'h5555;
    mipi_byte_aligner mipi_byte_aligner_lane1 (.sys_clk_c(sys_clk_c), .n7926(n7926), 
            .align_rst_n_d(align_rst_n_d), .hs_burst_flag_c(hs_burst_flag_c), 
            .byte_align_valid_lane1(byte_align_valid_lane1), .data_out_valid_N_225(data_out_valid_N_225_adj_520), 
            .seq_offect_valid(seq_offect_valid_adj_519), .sys_clk_c_enable_37(sys_clk_c_enable_37), 
            .VCC_net(VCC_net), .sys_clk_c_enable_112(sys_clk_c_enable_112), 
            .raw_data_out_lane1({raw_data_out_lane1}), .n7850(n7850), .n31(n31), 
            .n7855(n7855), .byte_align_data_lane1({byte_align_data_lane1}), 
            .\data_out_15__N_208[15] (data_out_15__N_208_adj_558[15]), .n2047(n2047), 
            .\data_out_15__N_208[13] (data_out_15__N_208_adj_558[13]), .\data_out_15__N_208[12] (data_out_15__N_208_adj_558[12]), 
            .n8(n8), .n6111(n6111), .n6105(n6105), .n38(n38), .\os_data_15__N_127[0] (os_data_15__N_127_adj_554[0]), 
            .raw_data_out_valid(raw_data_out_valid), .n7283(n7283), .n7179(n7179)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(189[19] 199[2])
    mipi_multi_lane_aligner mipi_multi_lane_aligner_inst (.sys_clk_c(sys_clk_c), 
            .hs_burst_flag_N_67(hs_burst_flag_N_67), .byte_align_data_lane1({byte_align_data_lane1}), 
            .GND_net(GND_net), .byte_align_data_lane0({byte_align_data_lane0}), 
            .multi_lane_align_data_out({multi_lane_align_data_out}), .hs_burst_flag_c(hs_burst_flag_c), 
            .lanes_data_in_valid({byte_align_valid_lane1, byte_align_valid_lane0}), 
            .multi_lane_align_data_out_valid(multi_lane_align_data_out_valid), 
            .key1_c(key1_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(206[25] 218[2])
    dphy_raw_fifo dphy_raw_fifo_inst (.GND_net(GND_net), .q({q}), .rxhsbyteclk(rxhsbyteclk), 
            .sys_clk_c(sys_clk_c), .dphy_raw_fifo_Reset(dphy_raw_fifo_Reset), 
            .dphy_raw_fifo_Q({dphy_raw_fifo_Q}), .VCC_net(VCC_net), .dphy_raw_fifo_Empty(dphy_raw_fifo_Empty), 
            .dphy_raw_fifo_RdEn(dphy_raw_fifo_RdEn)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    mipi_byte_aligner_U0 mipi_byte_aligner_lane0 (.sys_clk_c(sys_clk_c), .sys_clk_c_enable_78(sys_clk_c_enable_78), 
            .n7926(n7926), .sys_clk_c_enable_112(sys_clk_c_enable_112), 
            .raw_data_out_lane0({raw_data_out_lane0}), .n38(n38), .n7855(n7855), 
            .seq_offect_valid(seq_offect_valid_adj_519), .raw_data_out_valid(raw_data_out_valid), 
            .\data_out_15__N_208[13] (data_out_15__N_208_adj_558[13]), .n7850(n7850), 
            .\data_out_15__N_208[12] (data_out_15__N_208_adj_558[12]), .seq_offect_valid_adj_1(seq_offect_valid), 
            .n6157(n6157), .n8(n8_adj_518), .sync_found(sync_found), .byte_align_valid_lane0(byte_align_valid_lane0), 
            .data_out_valid_N_225(data_out_valid_N_225), .sys_clk_c_enable_39(sys_clk_c_enable_39), 
            .VCC_net(VCC_net), .byte_align_data_lane0({byte_align_data_lane0}), 
            .n2046(n2046), .n8_adj_2(n8), .n6111(n6111), .n31(n31), 
            .n6105(n6105), .data_out_valid_N_225_adj_3(data_out_valid_N_225_adj_520), 
            .n7179(n7179), .\os_data_15__N_127[0] (os_data_15__N_127_adj_554[0]), 
            .n7283(n7283), .n6704(n6704), .\data_out_15__N_208[15] (data_out_15__N_208_adj_558[15])) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(177[19] 187[2])
    mipi_lane_state_detection mipi_lane_state_detection_inst (.sys_clk_c(sys_clk_c), 
            .d0_cd(d0_cd), .lp_lane_data0({d0_rxlpp, d0_rxlpn}), .hs_burst_flag_c(hs_burst_flag_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(105[27] 113[2])
    
endmodule
//
// Verilog Description of module mipi_rx
//

module mipi_rx (VCC_net, hs_burst_flag_c, GND_net, lp_lane_data0, rxhsbyteclk, 
            q, clk_n, clk_p, data_n, data_p, d0_cd) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input VCC_net;
    input hs_burst_flag_c;
    input GND_net;
    output [1:0]lp_lane_data0;
    output rxhsbyteclk;
    output [31:0]q;
    inout clk_n;
    inout clk_p;
    inout [1:0]data_n;
    inout [1:0]data_p;
    output d0_cd;
    
    wire rxhsbyteclk /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(99[21:32])
    wire clk_n /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(3[11:16])
    wire clk_p /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(2[11:16])
    
    wire d0txlpen, d0_olsn, d0_olsp, d0rxlpen, clkrxlpen, clk_rxhsen_inv, 
        d0_rxhsen_inv;
    
    MIPIDPHYA Inst_MIPIDPHYA (.DP0(data_p[0]), .DN0(data_n[0]), .DP1(data_p[1]), 
            .DN1(data_n[1]), .CKP(clk_p), .CKN(clk_n), .D0RXHSEN(hs_burst_flag_c), 
            .D0HSDESEREN(VCC_net), .D0RXLPEN(d0rxlpen), .D0CDEN(VCC_net), 
            .D0TXHSEN(GND_net), .D0HSSEREN(GND_net), .D0HSTXDATA0(GND_net), 
            .D0HSTXDATA1(GND_net), .D0HSTXDATA2(GND_net), .D0HSTXDATA3(GND_net), 
            .D0HSTXDATA4(GND_net), .D0HSTXDATA5(GND_net), .D0HSTXDATA6(GND_net), 
            .D0HSTXDATA7(GND_net), .D0HSTXDATA8(GND_net), .D0HSTXDATA9(GND_net), 
            .D0HSTXDATA10(GND_net), .D0HSTXDATA11(GND_net), .D0HSTXDATA12(GND_net), 
            .D0HSTXDATA13(GND_net), .D0HSTXDATA14(GND_net), .D0HSTXDATA15(GND_net), 
            .D0TXHSPD(VCC_net), .D0DTXLPP(GND_net), .D0DTXLPN(GND_net), 
            .D0TXLPEN(d0txlpen), .D0HSRXDATA0(q[0]), .D0HSRXDATA1(q[2]), 
            .D0HSRXDATA2(q[4]), .D0HSRXDATA3(q[6]), .D0HSRXDATA4(q[8]), 
            .D0HSRXDATA5(q[10]), .D0HSRXDATA6(q[12]), .D0HSRXDATA7(q[14]), 
            .D0HSRXDATA8(q[16]), .D0HSRXDATA9(q[18]), .D0HSRXDATA10(q[20]), 
            .D0HSRXDATA11(q[22]), .D0HSRXDATA12(q[24]), .D0HSRXDATA13(q[26]), 
            .D0HSRXDATA14(q[28]), .D0HSRXDATA15(q[30]), .D0DRXLPP(lp_lane_data0[1]), 
            .D0DRXLPN(lp_lane_data0[0]), .D0DCDP(d0_olsp), .D0DCDN(d0_olsn), 
            .D1RXHSEN(hs_burst_flag_c), .D1HSDESEREN(VCC_net), .D1RXLPEN(d0rxlpen), 
            .D1CDEN(GND_net), .D1TXHSEN(GND_net), .D1HSSEREN(GND_net), 
            .D1HSTXDATA0(GND_net), .D1HSTXDATA1(GND_net), .D1HSTXDATA2(GND_net), 
            .D1HSTXDATA3(GND_net), .D1HSTXDATA4(GND_net), .D1HSTXDATA5(GND_net), 
            .D1HSTXDATA6(GND_net), .D1HSTXDATA7(GND_net), .D1HSTXDATA8(GND_net), 
            .D1HSTXDATA9(GND_net), .D1HSTXDATA10(GND_net), .D1HSTXDATA11(GND_net), 
            .D1HSTXDATA12(GND_net), .D1HSTXDATA13(GND_net), .D1HSTXDATA14(GND_net), 
            .D1HSTXDATA15(GND_net), .D1TXHSPD(VCC_net), .D1DTXLPP(GND_net), 
            .D1DTXLPN(GND_net), .D1TXLPEN(GND_net), .D1HSRXDATA0(q[1]), 
            .D1HSRXDATA1(q[3]), .D1HSRXDATA2(q[5]), .D1HSRXDATA3(q[7]), 
            .D1HSRXDATA4(q[9]), .D1HSRXDATA5(q[11]), .D1HSRXDATA6(q[13]), 
            .D1HSRXDATA7(q[15]), .D1HSRXDATA8(q[17]), .D1HSRXDATA9(q[19]), 
            .D1HSRXDATA10(q[21]), .D1HSRXDATA11(q[23]), .D1HSRXDATA12(q[25]), 
            .D1HSRXDATA13(q[27]), .D1HSRXDATA14(q[29]), .D1HSRXDATA15(q[31]), 
            .D2RXHSEN(GND_net), .D2HSDESEREN(GND_net), .D2RXLPEN(GND_net), 
            .D2CDEN(GND_net), .D2TXHSEN(GND_net), .D2HSSEREN(GND_net), 
            .D2HSTXDATA0(GND_net), .D2HSTXDATA1(GND_net), .D2HSTXDATA2(GND_net), 
            .D2HSTXDATA3(GND_net), .D2HSTXDATA4(GND_net), .D2HSTXDATA5(GND_net), 
            .D2HSTXDATA6(GND_net), .D2HSTXDATA7(GND_net), .D2HSTXDATA8(GND_net), 
            .D2HSTXDATA9(GND_net), .D2HSTXDATA10(GND_net), .D2HSTXDATA11(GND_net), 
            .D2HSTXDATA12(GND_net), .D2HSTXDATA13(GND_net), .D2HSTXDATA14(GND_net), 
            .D2HSTXDATA15(GND_net), .D2TXHSPD(VCC_net), .D2DTXLPP(GND_net), 
            .D2DTXLPN(GND_net), .D2TXLPEN(GND_net), .D3RXHSEN(GND_net), 
            .D3HSDESEREN(GND_net), .D3RXLPEN(GND_net), .D3CDEN(GND_net), 
            .D3TXHSEN(GND_net), .D3HSSEREN(GND_net), .D3HSTXDATA0(GND_net), 
            .D3HSTXDATA1(GND_net), .D3HSTXDATA2(GND_net), .D3HSTXDATA3(GND_net), 
            .D3HSTXDATA4(GND_net), .D3HSTXDATA5(GND_net), .D3HSTXDATA6(GND_net), 
            .D3HSTXDATA7(GND_net), .D3HSTXDATA8(GND_net), .D3HSTXDATA9(GND_net), 
            .D3HSTXDATA10(GND_net), .D3HSTXDATA11(GND_net), .D3HSTXDATA12(GND_net), 
            .D3HSTXDATA13(GND_net), .D3HSTXDATA14(GND_net), .D3HSTXDATA15(GND_net), 
            .D3TXHSPD(VCC_net), .D3DTXLPP(GND_net), .D3DTXLPN(GND_net), 
            .D3TXLPEN(GND_net), .CLKRXHSEN(VCC_net), .CLKRXLPEN(clkrxlpen), 
            .CLKCDEN(VCC_net), .CLKTXHSEN(GND_net), .CLKTXHSGATE(GND_net), 
            .CLKTXHSPD(VCC_net), .CLKDTXLPP(GND_net), .CLKDTXLPN(GND_net), 
            .CLKTXLPEN(GND_net), .PDDPHY(GND_net), .PDPLL(VCC_net), .PDBIAS(GND_net), 
            .PDCKG(GND_net), .LBEN(GND_net), .CLKREF(GND_net), .HSBYTECLKD(rxhsbyteclk)) /* synthesis HS_MODE="RX", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", FREQUENCY_PIN_HSBYTECLKD="75.000000", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(68[9] 102[2])
    defparam Inst_MIPIDPHYA.HSEL = 1;
    defparam Inst_MIPIDPHYA.HS_16BIT_EN = 1;
    defparam Inst_MIPIDPHYA.CN = 0;
    defparam Inst_MIPIDPHYA.CM = 0;
    defparam Inst_MIPIDPHYA.CO = 0;
    defparam Inst_MIPIDPHYA.PLL_TST = 9;
    defparam Inst_MIPIDPHYA.ENP_DESER = 0;
    INV INV_2 (.A(VCC_net), .Z(clk_rxhsen_inv)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(68[9] 102[2])
    OR2 OR2_t3 (.A(d0_olsp), .B(d0_olsn), .Z(d0_cd)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/mipi/mipi_rx/mipi_rx.v(79[9:53])
    AND2 AND2_t2 (.A(clk_rxhsen_inv), .B(VCC_net), .Z(clkrxlpen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/mipi/mipi_rx/mipi_rx.v(83[10:69])
    INV INV_1 (.A(hs_burst_flag_c), .Z(d0_rxhsen_inv)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(68[9] 102[2])
    AND2 AND2_t1 (.A(d0_rxhsen_inv), .B(VCC_net), .Z(d0rxlpen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/mipi/mipi_rx/mipi_rx.v(87[10:66])
    AND2 AND2_t0 (.A(d0_rxhsen_inv), .B(clk_rxhsen_inv), .Z(d0txlpen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=68, LSE_RLINE=102 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/mipi/mipi_rx/mipi_rx.v(91[10:70])
    
endmodule
//
// Verilog Description of module mipi_raw_data_controller
//

module mipi_raw_data_controller (raw_data_out_lane0, sys_clk_c, dphy_raw_fifo_Q, 
            raw_data_out_lane1, dphy_raw_fifo_Reset, hs_burst_flag_N_67, 
            raw_data_out_valid, dphy_raw_fifo_RdEn, dphy_raw_fifo_Empty, 
            seq_offect_valid, n38, sys_clk_c_enable_37, align_rst_n_d, 
            n2047, seq_offect_valid_adj_4, n2046, sync_found, sys_clk_c_enable_78, 
            n8, n6157, n6704, data_out_valid_N_225, sys_clk_c_enable_39) /* synthesis syn_module_defined=1 */ ;
    output [15:0]raw_data_out_lane0;
    input sys_clk_c;
    input [31:0]dphy_raw_fifo_Q;
    output [15:0]raw_data_out_lane1;
    output dphy_raw_fifo_Reset;
    input hs_burst_flag_N_67;
    output raw_data_out_valid;
    output dphy_raw_fifo_RdEn;
    input dphy_raw_fifo_Empty;
    input seq_offect_valid;
    input n38;
    output sys_clk_c_enable_37;
    input align_rst_n_d;
    output n2047;
    input seq_offect_valid_adj_4;
    output n2046;
    input sync_found;
    output sys_clk_c_enable_78;
    input n8;
    input n6157;
    input n6704;
    output data_out_valid_N_225;
    output sys_clk_c_enable_39;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    wire n2045, dphy_raw_fifo_Empty_N_65;
    
    FD1S3IX raw_data_out_lane0__i13 (.D(dphy_raw_fifo_Q[26]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i13.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i12 (.D(dphy_raw_fifo_Q[24]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i12.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i11 (.D(dphy_raw_fifo_Q[22]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i11.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i10 (.D(dphy_raw_fifo_Q[20]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i10.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i9 (.D(dphy_raw_fifo_Q[18]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i9.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i8 (.D(dphy_raw_fifo_Q[16]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i8.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i7 (.D(dphy_raw_fifo_Q[14]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i7.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i6 (.D(dphy_raw_fifo_Q[12]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i6.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i5 (.D(dphy_raw_fifo_Q[10]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i5.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i4 (.D(dphy_raw_fifo_Q[8]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i4.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i3 (.D(dphy_raw_fifo_Q[6]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i3.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i2 (.D(dphy_raw_fifo_Q[4]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i2.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i1 (.D(dphy_raw_fifo_Q[2]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i1.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i0 (.D(dphy_raw_fifo_Q[1]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i0.GSR = "ENABLED";
    FD1S3AX dphy_raw_fifo_Reset_16 (.D(hs_burst_flag_N_67), .CK(sys_clk_c), 
            .Q(dphy_raw_fifo_Reset)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam dphy_raw_fifo_Reset_16.GSR = "ENABLED";
    FD1S3AX raw_data_out_valid_17 (.D(dphy_raw_fifo_RdEn), .CK(sys_clk_c), 
            .Q(raw_data_out_valid)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_valid_17.GSR = "ENABLED";
    FD1S3AX dphy_raw_fifo_RdEn_15 (.D(dphy_raw_fifo_Empty_N_65), .CK(sys_clk_c), 
            .Q(dphy_raw_fifo_RdEn)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam dphy_raw_fifo_RdEn_15.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i0 (.D(dphy_raw_fifo_Q[0]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i0.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i15 (.D(dphy_raw_fifo_Q[31]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i15.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i14 (.D(dphy_raw_fifo_Q[29]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i14.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i13 (.D(dphy_raw_fifo_Q[27]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i13.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i12 (.D(dphy_raw_fifo_Q[25]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i12.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i11 (.D(dphy_raw_fifo_Q[23]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i11.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i10 (.D(dphy_raw_fifo_Q[21]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i10.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i9 (.D(dphy_raw_fifo_Q[19]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i9.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i8 (.D(dphy_raw_fifo_Q[17]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i8.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i7 (.D(dphy_raw_fifo_Q[15]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i7.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i6 (.D(dphy_raw_fifo_Q[13]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i6.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i5 (.D(dphy_raw_fifo_Q[11]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i5.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i4 (.D(dphy_raw_fifo_Q[9]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i4.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i3 (.D(dphy_raw_fifo_Q[7]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i3.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i2 (.D(dphy_raw_fifo_Q[5]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i2.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i1 (.D(dphy_raw_fifo_Q[3]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i1.GSR = "ENABLED";
    LUT4 i1685_1_lut (.A(dphy_raw_fifo_RdEn), .Z(n2045)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam i1685_1_lut.init = 16'h5555;
    FD1S3IX raw_data_out_lane0__i15 (.D(dphy_raw_fifo_Q[30]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i15.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i14 (.D(dphy_raw_fifo_Q[28]), .CK(sys_clk_c), 
            .CD(n2045), .Q(raw_data_out_lane0[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=26, LSE_RCOL=2, LSE_LLINE=150, LSE_RLINE=168 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i14.GSR = "ENABLED";
    LUT4 dphy_raw_fifo_Empty_I_0_1_lut (.A(dphy_raw_fifo_Empty), .Z(dphy_raw_fifo_Empty_N_65)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(43[13:33])
    defparam dphy_raw_fifo_Empty_I_0_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_rep_146 (.A(seq_offect_valid), .B(n38), .C(raw_data_out_valid), 
         .Z(sys_clk_c_enable_37)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_rep_146.init = 16'h4040;
    LUT4 i6941_2_lut_3_lut (.A(raw_data_out_valid), .B(align_rst_n_d), .C(seq_offect_valid), 
         .Z(n2047)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i6941_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i6920_2_lut_3_lut (.A(raw_data_out_valid), .B(align_rst_n_d), .C(seq_offect_valid_adj_4), 
         .Z(n2046)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i6920_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut_4_lut (.A(seq_offect_valid_adj_4), .B(sync_found), .C(raw_data_out_valid), 
         .D(align_rst_n_d), .Z(sys_clk_c_enable_78)) /* synthesis lut_function=(!(A (D)+!A !(B (C+!(D))+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h40ff;
    LUT4 i1_4_lut (.A(raw_data_out_valid), .B(n8), .C(n6157), .D(n6704), 
         .Z(data_out_valid_N_225)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam i1_4_lut.init = 16'haa2a;
    LUT4 i1_3_lut_rep_147 (.A(seq_offect_valid_adj_4), .B(sync_found), .C(raw_data_out_valid), 
         .Z(sys_clk_c_enable_39)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_rep_147.init = 16'h4040;
    
endmodule
//
// Verilog Description of module ddr_output
//

module ddr_output (sys_clk_c, sys_rst_n_N_10, multi_lane_align_data_out, 
            buf_douto15, buf_douto14, buf_douto13, buf_douto12, buf_douto11, 
            buf_douto10, buf_douto9, buf_douto8, buf_douto7, buf_douto6, 
            buf_douto5, buf_douto4, buf_douto3, buf_douto2, buf_douto1, 
            buf_douto0, GND_net, VCC_net, buf_clkout, multi_lane_align_data_out_valid, 
            buf_douto16) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_rst_n_N_10;
    input [31:0]multi_lane_align_data_out;
    output buf_douto15;
    output buf_douto14;
    output buf_douto13;
    output buf_douto12;
    output buf_douto11;
    output buf_douto10;
    output buf_douto9;
    output buf_douto8;
    output buf_douto7;
    output buf_douto6;
    output buf_douto5;
    output buf_douto4;
    output buf_douto3;
    output buf_douto2;
    output buf_douto1;
    output buf_douto0;
    input GND_net;
    input VCC_net;
    output buf_clkout;
    input multi_lane_align_data_out_valid;
    output buf_douto16;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    ODDRX1F Inst4_ODDRX1F15 (.D0(multi_lane_align_data_out[15]), .D1(multi_lane_align_data_out[31]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto15)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F15.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F14 (.D0(multi_lane_align_data_out[14]), .D1(multi_lane_align_data_out[30]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto14)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F14.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F13 (.D0(multi_lane_align_data_out[13]), .D1(multi_lane_align_data_out[29]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto13)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F13.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F12 (.D0(multi_lane_align_data_out[12]), .D1(multi_lane_align_data_out[28]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto12)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F12.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F11 (.D0(multi_lane_align_data_out[11]), .D1(multi_lane_align_data_out[27]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto11)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F11.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F10 (.D0(multi_lane_align_data_out[10]), .D1(multi_lane_align_data_out[26]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto10)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F10.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F9 (.D0(multi_lane_align_data_out[9]), .D1(multi_lane_align_data_out[25]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto9)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F9.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F8 (.D0(multi_lane_align_data_out[8]), .D1(multi_lane_align_data_out[24]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto8)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F8.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F7 (.D0(multi_lane_align_data_out[7]), .D1(multi_lane_align_data_out[23]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto7)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F7.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F6 (.D0(multi_lane_align_data_out[6]), .D1(multi_lane_align_data_out[22]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto6)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F6.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F5 (.D0(multi_lane_align_data_out[5]), .D1(multi_lane_align_data_out[21]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F5.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F4 (.D0(multi_lane_align_data_out[4]), .D1(multi_lane_align_data_out[20]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F4.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F3 (.D0(multi_lane_align_data_out[3]), .D1(multi_lane_align_data_out[19]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F3.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F2 (.D0(multi_lane_align_data_out[2]), .D1(multi_lane_align_data_out[18]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F2.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F1 (.D0(multi_lane_align_data_out[1]), .D1(multi_lane_align_data_out[17]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F1.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F0 (.D0(multi_lane_align_data_out[0]), .D1(multi_lane_align_data_out[16]), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F0.GSR = "ENABLED";
    ODDRX1F Inst3_ODDRX1F (.D0(VCC_net), .D1(GND_net), .SCLK(sys_clk_c), 
            .RST(sys_rst_n_N_10), .Q(buf_clkout)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst3_ODDRX1F.GSR = "ENABLED";
    ODDRX1F Inst4_ODDRX1F16 (.D0(multi_lane_align_data_out_valid), .D1(multi_lane_align_data_out_valid), 
            .SCLK(sys_clk_c), .RST(sys_rst_n_N_10), .Q(buf_douto16)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=12, LSE_RCOL=2, LSE_LLINE=282, LSE_RLINE=295 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(282[12] 295[2])
    defparam Inst4_ODDRX1F16.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module pll_sys_clk
//

module pll_sys_clk (clk_50m_pll_in, sys_clk_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk_50m_pll_in;
    output sys_clk_c;
    input GND_net;
    
    wire clk_50m_pll_in /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(38[6:20])
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    EHXPLLM PLLInst_0 (.CLKI(clk_50m_pll_in), .CLKFB(sys_clk_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .USRSTDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(sys_clk_c)) /* synthesis FREQUENCY_PIN_CLKOS="100.000000", FREQUENCY_PIN_CLKOP="100.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="14", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=13, LSE_RCOL=2, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(48[13] 52[2])
    defparam PLLInst_0.FIN = "100.0000";
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 9;
    defparam PLLInst_0.CLKOS_DIV = 9;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 8;
    defparam PLLInst_0.CLKOS_CPHASE = 10;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 2;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
//
// Verilog Description of module mipi_byte_aligner
//

module mipi_byte_aligner (sys_clk_c, n7926, align_rst_n_d, hs_burst_flag_c, 
            byte_align_valid_lane1, data_out_valid_N_225, seq_offect_valid, 
            sys_clk_c_enable_37, VCC_net, sys_clk_c_enable_112, raw_data_out_lane1, 
            n7850, n31, n7855, byte_align_data_lane1, \data_out_15__N_208[15] , 
            n2047, \data_out_15__N_208[13] , \data_out_15__N_208[12] , 
            n8, n6111, n6105, n38, \os_data_15__N_127[0] , raw_data_out_valid, 
            n7283, n7179) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output n7926;
    output align_rst_n_d;
    input hs_burst_flag_c;
    output byte_align_valid_lane1;
    input data_out_valid_N_225;
    output seq_offect_valid;
    input sys_clk_c_enable_37;
    input VCC_net;
    output sys_clk_c_enable_112;
    input [15:0]raw_data_out_lane1;
    output n7850;
    output n31;
    output n7855;
    output [15:0]byte_align_data_lane1;
    input \data_out_15__N_208[15] ;
    input n2047;
    input \data_out_15__N_208[13] ;
    input \data_out_15__N_208[12] ;
    output n8;
    output n6111;
    output n6105;
    input n38;
    output \os_data_15__N_127[0] ;
    input raw_data_out_valid;
    output n7283;
    output n7179;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    wire n31_c, n31_adj_496, n2546, n31_adj_497, n6524;
    wire [31:0]data_squence;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(41[12:24])
    wire [3:0]seq_offset;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    
    wire n6, n31_adj_498, n31_adj_499, n5474, n7877;
    wire [3:0]found_offect;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(57[11:23])
    
    wire n8_c, n7, n9, n7899, n7783, n77, n7784, n19, n7841, 
        n54, n7891;
    wire [31:0]os_data_15__N_127;
    
    wire n21, n15, n17, sys_clk_c_enable_81, n7892, n7898, n62, 
        n58, n122, n23, n1, n31_adj_500, n7883, n25, n11, n13, 
        n7673, n37, n7674, n29, n31_adj_501, n27, n7914, n7292, 
        n7816, n7815, n7882, n112, n6135, n7866, n7867, n78, 
        n7840, n75, n7853, n7854, n76, n7848, n7849, n56, n7161, 
        n7792, n7793, n50, n7182, n7123, n7158, n7803, n7804, 
        n7797, n7798, n106, n7814, n73, n31_adj_502, n31_adj_503, 
        n7884, n7805, n52, n6926, n7796, n6178, n7872, n7876, 
        n4, n7873, n4815, n21_adj_504, n7794, n31_adj_505, n7912, 
        n6372, n7906, n6136, n1920, n7915, n7152, n43, n6380, 
        n6368, n7913, n7148, n72;
    wire [15:0]data_out_15__N_208;
    
    wire n7672, n7782, n6442, n5629, n6434, n31_adj_507, n7868, 
        n5, n71, n7150, n7920, n2016, n6428, n7919, n7911, n6388, 
        n6398, n7045, n6752, n7897, n5_adj_508, n39, n7762, n40, 
        n7716, n80, n6700, n4_adj_509, n6174, n7_adj_511, n6938, 
        n6932, n42, n38_c, n79, n59, n2025, n61, n7143, n49, 
        n46, n74, n53, n1935, n6838, n6830, n10, n14, n12, 
        n6854, n6820, n1942, n6850, n6860, n6997, n6858, n24, 
        n22, n6842, n6578, n26, n20, n18, n16, n7115, n45, 
        n82, n60, n30, n28, n7119, n31_adj_512, n6668, n7918, 
        n6802, n7025, n7902, n6506, n7927, n7928, n7929, n7901, 
        n7903, n6494, n88, n6566, n9_adj_513, n7013, n6554, n6666, 
        n6676, n6754, n6592, n6670, n66, n6804, n6794, n7027, 
        n6786;
    wire [3:0]n187;
    wire [3:0]n166;
    
    wire n6422, n5_adj_515, n6588, n87, n111;
    wire [2:0]n623;
    
    wire n7007, n6576, n7073, n7869, n5_adj_516, n6248, n6240, 
        n7047, n6230, n6542, n6258;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(n31_c), .B(n31_adj_496), .C(n2546), 
         .D(n31_adj_497), .Z(n6524)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 data_squence_31__I_0_92_i6_3_lut (.A(data_squence[5]), .B(data_squence[6]), 
         .C(seq_offset[0]), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i6_3_lut.init = 16'hcaca;
    LUT4 i6944_2_lut_3_lut_4_lut (.A(n31_adj_498), .B(n31_adj_499), .C(n5474), 
         .D(n7877), .Z(found_offect[3])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i6944_2_lut_3_lut_4_lut.init = 16'h7fff;
    LUT4 data_squence_31__I_0_92_i8_3_lut (.A(data_squence[7]), .B(data_squence[8]), 
         .C(seq_offset[0]), .Z(n8_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i8_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i7_3_lut (.A(data_squence[6]), .B(data_squence[7]), 
         .C(seq_offset[0]), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i7_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i9_3_lut (.A(data_squence[8]), .B(data_squence[9]), 
         .C(seq_offset[0]), .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i9_3_lut.init = 16'hcaca;
    LUT4 n7783_bdd_3_lut_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7783), 
         .D(n77), .Z(n7784)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7783_bdd_3_lut_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i19_3_lut (.A(data_squence[18]), .B(data_squence[19]), 
         .C(seq_offset[0]), .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i19_3_lut.init = 16'hcaca;
    PFUMX i7126 (.BLUT(n7841), .ALUT(n54), .C0(n7891), .Z(os_data_15__N_127[5]));
    LUT4 data_squence_31__I_0_92_i21_3_lut (.A(data_squence[20]), .B(data_squence[21]), 
         .C(seq_offset[0]), .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i21_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i15_3_lut (.A(data_squence[14]), .B(data_squence[15]), 
         .C(seq_offset[0]), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i15_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i17_3_lut (.A(data_squence[16]), .B(data_squence[17]), 
         .C(seq_offset[0]), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i17_3_lut.init = 16'hcaca;
    FD1P3IX seq_offset__i0 (.D(found_offect[0]), .SP(sys_clk_c_enable_81), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i0.GSR = "ENABLED";
    LUT4 i2695_4_lut_4_lut (.A(n7892), .B(n7898), .C(n62), .D(n58), 
         .Z(n122)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i2695_4_lut_4_lut.init = 16'h5140;
    LUT4 data_squence_31__I_0_92_i23_3_lut (.A(data_squence[22]), .B(data_squence[23]), 
         .C(seq_offset[0]), .Z(n23)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i23_3_lut.init = 16'hcaca;
    FD1S3AX align_rst_n_d_82 (.D(hs_burst_flag_c), .CK(sys_clk_c), .Q(align_rst_n_d)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(33[14] 35[8])
    defparam align_rst_n_d_82.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_159 (.A(n1), .B(n31_adj_500), .Z(n7883)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_159.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i25_3_lut (.A(data_squence[24]), .B(data_squence[25]), 
         .C(seq_offset[0]), .Z(n25)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i25_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i11_3_lut (.A(data_squence[10]), .B(data_squence[11]), 
         .C(seq_offset[0]), .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i11_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i13_3_lut (.A(data_squence[12]), .B(data_squence[13]), 
         .C(seq_offset[0]), .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i13_3_lut.init = 16'hcaca;
    PFUMX i7029 (.BLUT(n7673), .ALUT(n37), .C0(n7898), .Z(n7674));
    LUT4 data_squence_31__I_0_92_i29_3_lut (.A(data_squence[28]), .B(data_squence[29]), 
         .C(seq_offset[0]), .Z(n29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i29_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i31_3_lut (.A(data_squence[30]), .B(data_squence[31]), 
         .C(seq_offset[0]), .Z(n31_adj_501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i31_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i27_3_lut (.A(data_squence[26]), .B(data_squence[27]), 
         .C(seq_offset[0]), .Z(n27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i27_3_lut.init = 16'hcaca;
    LUT4 i6964_3_lut_3_lut_4_lut_3_lut_4_lut (.A(n7898), .B(n7914), .C(n7899), 
         .D(seq_offset[3]), .Z(n7292)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i6964_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h100f;
    PFUMX i7109 (.BLUT(n7816), .ALUT(n7815), .C0(n7882), .Z(os_data_15__N_127[8]));
    PFUMX data_squence_31__I_0_92_i144 (.BLUT(n112), .ALUT(n6135), .C0(n7891), 
          .Z(os_data_15__N_127[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;
    LUT4 n7866_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n77), 
         .D(n7866), .Z(n7867)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7866_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n7840_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n78), 
         .D(n7840), .Z(n7841)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7840_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n7853_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n75), 
         .D(n7853), .Z(n7854)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7853_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n7848_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n76), 
         .D(n7848), .Z(n7849)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7848_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i6741_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n56), .D(n7161), 
         .Z(os_data_15__N_127[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i6741_3_lut_4_lut.init = 16'hfe10;
    FD1S3IX data_out_valid_86 (.D(data_out_valid_N_225), .CK(sys_clk_c), 
            .CD(n7926), .Q(byte_align_valid_lane1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out_valid_86.GSR = "ENABLED";
    LUT4 n76_bdd_3_lut_7129_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7792), 
         .D(n76), .Z(n7793)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n76_bdd_3_lut_7129_4_lut.init = 16'hfe10;
    LUT4 i6760_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n50), .D(data_squence[2]), 
         .Z(n7182)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i6760_3_lut_4_lut.init = 16'hfe10;
    LUT4 i6738_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7123), .D(n7158), 
         .Z(os_data_15__N_127[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i6738_3_lut_4_lut.init = 16'hfe10;
    LUT4 n75_bdd_3_lut_7132_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7803), 
         .D(n75), .Z(n7804)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n75_bdd_3_lut_7132_4_lut.init = 16'hfe10;
    FD1P3IX seq_offect_valid_84 (.D(VCC_net), .SP(sys_clk_c_enable_37), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offect_valid)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offect_valid_84.GSR = "ENABLED";
    FD1P3IX data_squence__i0 (.D(raw_data_out_lane1[15]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i0.GSR = "ENABLED";
    LUT4 n78_bdd_3_lut_7125_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7797), 
         .D(n78), .Z(n7798)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n78_bdd_3_lut_7125_4_lut.init = 16'hf960;
    PFUMX data_squence_31__I_0_92_i138 (.BLUT(n106), .ALUT(n122), .C0(n7891), 
          .Z(os_data_15__N_127[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;
    LUT4 n73_bdd_3_lut_7135_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7814), 
         .D(n73), .Z(n7815)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n73_bdd_3_lut_7135_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_160 (.A(n31_adj_502), .B(n31_adj_503), .Z(n7884)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_160.init = 16'h8888;
    PFUMX i7099 (.BLUT(n7805), .ALUT(n7804), .C0(n7882), .Z(os_data_15__N_127[10]));
    LUT4 n7849_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n52), 
         .D(n7849), .Z(n7850)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n7849_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_3_lut_4_lut (.A(data_squence[28]), .B(data_squence[30]), .C(data_squence[31]), 
         .D(data_squence[17]), .Z(n6926)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    PFUMX i7096 (.BLUT(n7798), .ALUT(n7796), .C0(n7891), .Z(os_data_15__N_127[13]));
    LUT4 i1_2_lut_3_lut (.A(data_squence[28]), .B(data_squence[30]), .C(data_squence[27]), 
         .Z(n6178)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 n78_bdd_3_lut_7094_4_lut (.A(seq_offset[3]), .B(n7899), .C(n62), 
         .D(n7898), .Z(n7796)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam n78_bdd_3_lut_7094_4_lut.init = 16'h0090;
    LUT4 i1_4_lut (.A(n7872), .B(n7876), .C(n5474), .D(n4), .Z(found_offect[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_4_lut.init = 16'h75f5;
    LUT4 i1_4_lut_adj_114 (.A(n7873), .B(n7877), .C(n7884), .D(n4815), 
         .Z(found_offect[1])) /* synthesis lut_function=((B ((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_114.init = 16'hdd5d;
    LUT4 i1_4_lut_adj_115 (.A(n4), .B(n7883), .C(n7876), .D(n21_adj_504), 
         .Z(n4815)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;
    defparam i1_4_lut_adj_115.init = 16'h44c4;
    PFUMX i7092 (.BLUT(n7794), .ALUT(n7793), .C0(n7882), .Z(os_data_15__N_127[11]));
    LUT4 i1_2_lut (.A(n31_adj_505), .B(n31), .Z(n21_adj_504)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_116 (.A(n31_adj_502), .B(n31_adj_503), 
         .C(n31_adj_500), .D(n1), .Z(n5474)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_116.init = 16'h8000;
    LUT4 i1_2_lut_4_lut (.A(n7912), .B(data_squence[23]), .C(data_squence[24]), 
         .D(data_squence[11]), .Z(n6372)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_182 (.A(data_squence[26]), .B(data_squence[25]), .Z(n7906)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_2_lut_rep_182.init = 16'heeee;
    LUT4 n7854_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n19), 
         .D(n7854), .Z(n7855)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n7854_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_4_lut (.A(n7892), .B(n7898), .C(n7914), .D(n31_adj_501), 
         .Z(n6136)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h0100;
    LUT4 i2_2_lut_3_lut (.A(data_squence[26]), .B(data_squence[25]), .C(data_squence[15]), 
         .Z(n1920)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i2_2_lut_3_lut.init = 16'hefef;
    LUT4 data_squence_31__I_0_92_i75_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n7152), .D(n43), .Z(n75)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i75_3_lut_4_lut.init = 16'hf960;
    FD1S3IX data_out__i15 (.D(\data_out_15__N_208[15] ), .CK(sys_clk_c), 
            .CD(n7926), .Q(byte_align_data_lane1[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_117 (.A(n6380), .B(n6372), .C(n7906), .D(n6368), 
         .Z(n31_adj_497)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hfffe;
    LUT4 i1_4_lut_adj_118 (.A(data_squence[15]), .B(n7913), .C(data_squence[14]), 
         .D(data_squence[13]), .Z(n6380)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_118.init = 16'hdfff;
    LUT4 i6739_3_lut_4_lut_4_lut (.A(n7892), .B(n7148), .C(n72), .D(n7898), 
         .Z(n7161)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i6739_3_lut_4_lut_4_lut.init = 16'he4f0;
    LUT4 i1_2_lut_rep_149 (.A(n31_adj_498), .B(n31_adj_499), .Z(n7873)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_149.init = 16'h8888;
    FD1S3IX data_out__i14 (.D(os_data_15__N_127[1]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i14.GSR = "ENABLED";
    FD1S3IX data_out__i13 (.D(\data_out_15__N_208[13] ), .CK(sys_clk_c), 
            .CD(n7926), .Q(byte_align_data_lane1[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i13.GSR = "ENABLED";
    FD1S3IX data_out__i12 (.D(\data_out_15__N_208[12] ), .CK(sys_clk_c), 
            .CD(n7926), .Q(byte_align_data_lane1[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i12.GSR = "ENABLED";
    FD1S3IX data_out__i11 (.D(data_out_15__N_208[11]), .CK(sys_clk_c), .CD(n7926), 
            .Q(byte_align_data_lane1[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i11.GSR = "ENABLED";
    FD1S3IX data_out__i10 (.D(os_data_15__N_127[5]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i10.GSR = "ENABLED";
    FD1S3IX data_out__i9 (.D(os_data_15__N_127[6]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i9.GSR = "ENABLED";
    FD1S3IX data_out__i8 (.D(os_data_15__N_127[7]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i8.GSR = "ENABLED";
    FD1S3IX data_out__i7 (.D(os_data_15__N_127[8]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i7.GSR = "ENABLED";
    FD1S3IX data_out__i6 (.D(os_data_15__N_127[9]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i6.GSR = "ENABLED";
    FD1S3IX data_out__i5 (.D(os_data_15__N_127[10]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i5.GSR = "ENABLED";
    FD1S3IX data_out__i4 (.D(os_data_15__N_127[11]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i4.GSR = "ENABLED";
    FD1S3IX data_out__i3 (.D(os_data_15__N_127[12]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_119 (.A(data_squence[17]), .B(data_squence[18]), .C(data_squence[19]), 
         .D(data_squence[12]), .Z(n6368)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_119.init = 16'hfffe;
    FD1S3IX data_out__i2 (.D(os_data_15__N_127[13]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i2.GSR = "ENABLED";
    FD1S3IX data_out__i1 (.D(os_data_15__N_127[14]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i1.GSR = "ENABLED";
    LUT4 data_squence_1__bdd_3_lut_7028 (.A(data_squence[2]), .B(seq_offset[0]), 
         .C(data_squence[3]), .Z(n7672)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam data_squence_1__bdd_3_lut_7028.init = 16'he2e2;
    PFUMX i7088 (.BLUT(n7784), .ALUT(n7782), .C0(n7891), .Z(os_data_15__N_127[12]));
    LUT4 i1_4_lut_adj_120 (.A(n6442), .B(n5629), .C(n6434), .D(data_squence[14]), 
         .Z(n31_adj_507)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_4_lut_adj_120.init = 16'hfeff;
    LUT4 n7867_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n21), 
         .D(n7867), .Z(n7868)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n7867_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 data_squence_31__I_0_92_i5_3_lut (.A(data_squence[4]), .B(data_squence[5]), 
         .C(seq_offset[0]), .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i5_3_lut.init = 16'hcaca;
    LUT4 i6736_3_lut_4_lut_4_lut (.A(n7892), .B(n43), .C(n71), .D(n7898), 
         .Z(n7158)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam i6736_3_lut_4_lut_4_lut.init = 16'he4f0;
    LUT4 n77_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(n7150), 
         .D(n37), .Z(n7866)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n77_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_121 (.A(n7920), .B(data_squence[12]), .C(data_squence[13]), 
         .D(n2016), .Z(n6442)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_4_lut_adj_121.init = 16'hffbf;
    LUT4 i1_4_lut_adj_122 (.A(n6428), .B(n7919), .C(data_squence[20]), 
         .D(data_squence[11]), .Z(n6434)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_4_lut_adj_122.init = 16'hfffe;
    LUT4 i1_2_lut_rep_187 (.A(data_squence[19]), .B(data_squence[20]), .Z(n7911)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_rep_187.init = 16'heeee;
    LUT4 i1_4_lut_adj_123 (.A(n6388), .B(n6398), .C(n7045), .D(data_squence[15]), 
         .Z(n2546)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_123.init = 16'hefff;
    LUT4 i1_3_lut_4_lut_adj_124 (.A(data_squence[19]), .B(data_squence[20]), 
         .C(data_squence[6]), .D(data_squence[10]), .Z(n6752)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_3_lut_4_lut_adj_124.init = 16'hfffe;
    LUT4 i1_4_lut_adj_125 (.A(data_squence[13]), .B(n6428), .C(data_squence[17]), 
         .D(data_squence[20]), .Z(n6388)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_125.init = 16'hfffe;
    LUT4 i6699_2_lut (.A(data_squence[16]), .B(data_squence[14]), .Z(n7045)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6699_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_188 (.A(data_squence[22]), .B(data_squence[21]), .Z(n7912)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_rep_188.init = 16'heeee;
    LUT4 i1_3_lut_rep_173_4_lut (.A(data_squence[22]), .B(data_squence[21]), 
         .C(data_squence[24]), .D(data_squence[23]), .Z(n7897)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_3_lut_rep_173_4_lut.init = 16'hfffe;
    FD1P3IX seq_offset__i3 (.D(found_offect[3]), .SP(sys_clk_c_enable_81), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_126 (.A(data_squence[26]), .B(data_squence[27]), .Z(n5_adj_508)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_2_lut_adj_126.init = 16'heeee;
    LUT4 n75_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(n39), .D(n7762), 
         .Z(n7853)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n75_bdd_3_lut_4_lut.init = 16'hf960;
    FD1P3IX seq_offset__i2 (.D(found_offect[2]), .SP(sys_clk_c_enable_81), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i2.GSR = "ENABLED";
    FD1P3IX seq_offset__i1 (.D(found_offect[1]), .SP(sys_clk_c_enable_81), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_127 (.A(data_squence[19]), .B(data_squence[18]), .Z(n6428)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_adj_127.init = 16'heeee;
    LUT4 i1_2_lut_adj_128 (.A(data_squence[15]), .B(data_squence[10]), .Z(n5629)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_128.init = 16'hbbbb;
    LUT4 n76_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(n40), .D(n7716), 
         .Z(n7848)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n76_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i72_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n80), .D(n40), .Z(n72)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i72_3_lut_4_lut.init = 16'hf960;
    LUT4 i2_3_lut (.A(n6700), .B(n31_adj_505), .C(n4_adj_509), .Z(n8)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i2_3_lut.init = 16'hc8c8;
    LUT4 i1_2_lut_rep_189 (.A(data_squence[16]), .B(data_squence[20]), .Z(n7913)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_rep_189.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_129 (.A(data_squence[16]), .B(data_squence[20]), 
         .C(n7897), .D(n31_adj_505), .Z(n6174)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_3_lut_4_lut_adj_129.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_adj_130 (.A(data_squence[16]), .B(data_squence[20]), 
         .C(data_squence[9]), .Z(n7_adj_511)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_3_lut_adj_130.init = 16'hefef;
    FD1S3IX data_out__i0 (.D(os_data_15__N_127[15]), .CK(sys_clk_c), .CD(n2047), 
            .Q(byte_align_data_lane1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_190 (.A(seq_offset[1]), .B(seq_offset[0]), .Z(n7914)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_rep_190.init = 16'h6666;
    LUT4 i1_4_lut_adj_131 (.A(data_squence[15]), .B(n7897), .C(n7913), 
         .D(n7906), .Z(n6700)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_4_lut_adj_131.init = 16'hfffd;
    LUT4 i1_4_lut_adj_132 (.A(n7873), .B(n5474), .C(n4), .D(n6524), 
         .Z(n6111)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_4_lut_adj_132.init = 16'h8000;
    LUT4 i1_4_lut_adj_133 (.A(n6938), .B(n6932), .C(n2016), .D(data_squence[19]), 
         .Z(n6105)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_133.init = 16'hfeff;
    FD1P3IX data_squence__i1 (.D(raw_data_out_lane1[14]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i1.GSR = "ENABLED";
    LUT4 n78_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(n42), .D(n38_c), 
         .Z(n7840)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n78_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i71_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n79), .D(n39), .Z(n71)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i71_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i59_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n29), .D(n27), .Z(n59)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i59_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_134 (.A(n2025), .B(n5_adj_508), .C(n6926), .D(data_squence[20]), 
         .Z(n6938)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_134.init = 16'hfeff;
    LUT4 n73_bdd_3_lut_7108_4_lut (.A(seq_offset[2]), .B(n7915), .C(n61), 
         .D(n7143), .Z(n7814)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n73_bdd_3_lut_7108_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i49_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n19), .D(n17), .Z(n49)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i49_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i74_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n46), .D(n42), .Z(n74)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i74_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i53_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n23), .D(n21), .Z(n53)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i53_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_135 (.A(n1935), .B(n6838), .C(n6830), .D(data_squence[8]), 
         .Z(n31_c)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_4_lut_adj_135.init = 16'hfeff;
    LUT4 data_squence_31__I_0_92_i61_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n31_adj_501), .D(n29), .Z(n61)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i61_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i57_rep_85_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n27), .D(n25), .Z(n7143)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i57_rep_85_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i40_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n10), .D(n8_c), .Z(n40)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i40_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i44_rep_90_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n14), .D(n12), .Z(n7148)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i44_rep_90_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_136 (.A(n6854), .B(n6820), .C(n1942), .D(data_squence[17]), 
         .Z(n6830)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_4_lut_adj_136.init = 16'hfffe;
    LUT4 n78_bdd_3_lut_7095_4_lut (.A(seq_offset[2]), .B(n7915), .C(n54), 
         .D(n58), .Z(n7797)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n78_bdd_3_lut_7095_4_lut.init = 16'hf690;
    LUT4 i1_2_lut_adj_137 (.A(data_squence[10]), .B(data_squence[5]), .Z(n6820)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_adj_137.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i55_rep_65_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n25), .D(n23), .Z(n7123)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i55_rep_65_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_138 (.A(n6850), .B(n6860), .C(n6997), .D(n6858), 
         .Z(n31_adj_496)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_138.init = 16'hffef;
    LUT4 data_squence_31__I_0_92_i54_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n24), .D(n22), .Z(n54)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i54_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_139 (.A(n6842), .B(data_squence[3]), .C(n6578), 
         .D(data_squence[18]), .Z(n6850)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_139.init = 16'hfffb;
    LUT4 data_squence_31__I_0_92_i56_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n26), .D(n24), .Z(n56)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i56_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_140 (.A(data_squence[10]), .B(n6854), .C(data_squence[17]), 
         .D(data_squence[8]), .Z(n6858)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_140.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i52_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n22), .D(n20), .Z(n52)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i52_3_lut_4_lut.init = 16'hf960;
    FD1P3IX data_squence__i2 (.D(raw_data_out_lane1[13]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i2.GSR = "ENABLED";
    FD1P3IX data_squence__i3 (.D(raw_data_out_lane1[12]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i3.GSR = "ENABLED";
    FD1P3IX data_squence__i4 (.D(raw_data_out_lane1[11]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i4.GSR = "ENABLED";
    FD1P3IX data_squence__i5 (.D(raw_data_out_lane1[10]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i5.GSR = "ENABLED";
    FD1P3IX data_squence__i6 (.D(raw_data_out_lane1[9]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i6.GSR = "ENABLED";
    FD1P3IX data_squence__i7 (.D(raw_data_out_lane1[8]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i7.GSR = "ENABLED";
    FD1P3IX data_squence__i8 (.D(raw_data_out_lane1[7]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i8.GSR = "ENABLED";
    FD1P3IX data_squence__i9 (.D(raw_data_out_lane1[6]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i9.GSR = "ENABLED";
    FD1P3IX data_squence__i10 (.D(raw_data_out_lane1[5]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i10.GSR = "ENABLED";
    FD1P3IX data_squence__i11 (.D(raw_data_out_lane1[4]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i11.GSR = "ENABLED";
    FD1P3IX data_squence__i12 (.D(raw_data_out_lane1[3]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i12.GSR = "ENABLED";
    FD1P3IX data_squence__i13 (.D(raw_data_out_lane1[2]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i13.GSR = "ENABLED";
    FD1P3IX data_squence__i14 (.D(raw_data_out_lane1[1]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i14.GSR = "ENABLED";
    FD1P3IX data_squence__i15 (.D(raw_data_out_lane1[0]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i15.GSR = "ENABLED";
    FD1P3IX data_squence__i16 (.D(data_squence[0]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[16])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i16.GSR = "ENABLED";
    FD1P3IX data_squence__i17 (.D(data_squence[1]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[17])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i17.GSR = "ENABLED";
    FD1P3IX data_squence__i18 (.D(data_squence[2]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[18])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i18.GSR = "ENABLED";
    FD1P3IX data_squence__i19 (.D(data_squence[3]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[19])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i19.GSR = "ENABLED";
    FD1P3IX data_squence__i20 (.D(data_squence[4]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[20])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i20.GSR = "ENABLED";
    FD1P3IX data_squence__i21 (.D(data_squence[5]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[21])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i21.GSR = "ENABLED";
    FD1P3IX data_squence__i22 (.D(data_squence[6]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[22])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i22.GSR = "ENABLED";
    FD1P3IX data_squence__i23 (.D(data_squence[7]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[23])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i23.GSR = "ENABLED";
    FD1P3IX data_squence__i24 (.D(data_squence[8]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[24])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i24.GSR = "ENABLED";
    FD1P3IX data_squence__i25 (.D(data_squence[9]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[25])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i25.GSR = "ENABLED";
    FD1P3IX data_squence__i26 (.D(data_squence[10]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[26])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i26.GSR = "ENABLED";
    FD1P3IX data_squence__i27 (.D(data_squence[11]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[27])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i27.GSR = "ENABLED";
    FD1P3IX data_squence__i28 (.D(data_squence[12]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[28])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i28.GSR = "ENABLED";
    FD1P3IX data_squence__i29 (.D(data_squence[13]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[29])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i29.GSR = "ENABLED";
    FD1P3IX data_squence__i30 (.D(data_squence[14]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[30])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i30.GSR = "ENABLED";
    FD1P3IX data_squence__i31 (.D(data_squence[15]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[31])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i31.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i48_rep_57_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n18), .D(n16), .Z(n7115)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i48_rep_57_3_lut_4_lut.init = 16'hf960;
    LUT4 n40_bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), .C(data_squence[4]), 
         .D(n6), .Z(n7716)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n40_bdd_3_lut_4_lut.init = 16'hf690;
    LUT4 data_squence_31__I_0_92_i45_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n15), .D(n13), .Z(n45)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i45_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i41_rep_92_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n11), .D(n9), .Z(n7150)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i41_rep_92_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i37_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n7), .D(n5), .Z(n37)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i37_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i82_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n54), .D(n50), .Z(n82)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i82_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i47_rep_94_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n17), .D(n15), .Z(n7152)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i47_rep_94_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i42_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n12), .D(n10), .Z(n42)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i42_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i46_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n16), .D(n14), .Z(n46)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i46_3_lut_4_lut.init = 16'hf960;
    LUT4 n76_bdd_4_lut_7091_4_lut (.A(seq_offset[2]), .B(n7915), .C(data_squence[31]), 
         .D(n60), .Z(n7792)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(D))) */ ;
    defparam n76_bdd_4_lut_7091_4_lut.init = 16'hb920;
    LUT4 data_squence_31__I_0_92_i50_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n20), .D(n18), .Z(n50)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i50_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i62_4_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(data_squence[31]), .D(n30), .Z(n62)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(D))) */ ;
    defparam data_squence_31__I_0_92_i62_4_lut_4_lut.init = 16'hb920;
    LUT4 data_squence_31__I_0_92_i58_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n28), .D(n26), .Z(n58)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i58_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_1__bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n7672), .D(data_squence[1]), .Z(n7673)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_1__bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i51_rep_61_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n21), .D(n19), .Z(n7119)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i51_rep_61_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i38_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n8_c), .D(n6), .Z(n38_c)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i38_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i43_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n13), .D(n11), .Z(n43)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i43_3_lut_4_lut.init = 16'hf960;
    LUT4 n39_bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), .C(data_squence[3]), 
         .D(n5), .Z(n7762)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n39_bdd_3_lut_4_lut.init = 16'hf690;
    LUT4 data_squence_31__I_0_92_i60_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n30), .D(n28), .Z(n60)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i60_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i39_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n9), .D(n7), .Z(n39)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i39_3_lut_4_lut.init = 16'hf960;
    LUT4 i2656_2_lut_rep_191 (.A(seq_offset[1]), .B(seq_offset[0]), .Z(n7915)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2656_2_lut_rep_191.init = 16'heeee;
    LUT4 i1_2_lut_rep_174_3_lut (.A(seq_offset[1]), .B(seq_offset[0]), .C(seq_offset[2]), 
         .Z(n7898)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i1_2_lut_rep_174_3_lut.init = 16'h1e1e;
    LUT4 i1_2_lut_adj_141 (.A(data_squence[9]), .B(data_squence[4]), .Z(n6842)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_2_lut_adj_141.init = 16'heeee;
    LUT4 i1_2_lut_adj_142 (.A(data_squence[15]), .B(data_squence[16]), .Z(n6854)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_142.init = 16'heeee;
    LUT4 i1_2_lut_rep_168_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7892)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_2_lut_rep_168_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i1_2_lut_adj_143 (.A(data_squence[14]), .B(data_squence[13]), .Z(n6578)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_2_lut_adj_143.init = 16'heeee;
    LUT4 i1_2_lut_adj_144 (.A(data_squence[9]), .B(data_squence[4]), .Z(n1935)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_2_lut_adj_144.init = 16'hbbbb;
    LUT4 i6652_2_lut (.A(data_squence[6]), .B(data_squence[7]), .Z(n6997)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6652_2_lut.init = 16'h8888;
    LUT4 i4563_1_lut_rep_158_2_lut_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7882)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam i4563_1_lut_rep_158_2_lut_3_lut_4_lut.init = 16'hf0e1;
    LUT4 i2660_2_lut_rep_175_3_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(seq_offset[2]), .Z(n7899)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2660_2_lut_rep_175_3_lut.init = 16'hfefe;
    LUT4 i6928_2_lut_rep_167_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7891)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i6928_2_lut_rep_167_3_lut_4_lut.init = 16'h0001;
    LUT4 n77_bdd_3_lut_7119_4_lut (.A(seq_offset[2]), .B(n7915), .C(n53), 
         .D(n7143), .Z(n7783)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n77_bdd_3_lut_7119_4_lut.init = 16'hf690;
    LUT4 i1_2_lut_adj_145 (.A(n31_adj_507), .B(n31_adj_512), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_adj_145.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_146 (.A(data_squence[7]), .B(data_squence[14]), 
         .C(data_squence[6]), .Z(n6668)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_2_lut_3_lut_adj_146.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_147 (.A(data_squence[7]), .B(data_squence[14]), 
         .C(data_squence[13]), .D(n7918), .Z(n6802)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_2_lut_3_lut_4_lut_adj_147.init = 16'hfffe;
    LUT4 i1_2_lut_rep_194 (.A(data_squence[12]), .B(data_squence[11]), .Z(n7918)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_rep_194.init = 16'heeee;
    LUT4 i1_4_lut_adj_148 (.A(n7025), .B(n5629), .C(n7902), .D(n6506), 
         .Z(n1)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_148.init = 16'hfffd;
    PFUMX i7140 (.BLUT(n7927), .ALUT(n7928), .C0(seq_offset[0]), .Z(n7929));
    LUT4 i6680_2_lut (.A(data_squence[8]), .B(data_squence[11]), .Z(n7025)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6680_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_rep_177_4_lut (.A(data_squence[12]), .B(data_squence[11]), 
         .C(data_squence[13]), .D(data_squence[18]), .Z(n7901)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_3_lut_rep_177_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_149 (.A(n7919), .B(n7903), .C(n1942), .D(n6494), 
         .Z(n6506)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_149.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i88_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n60), .D(n56), .Z(n88)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i88_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_adj_150 (.A(data_squence[13]), .B(data_squence[9]), .Z(n6494)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_adj_150.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i34_3_lut_4_lut_then_3_lut (.A(seq_offset[2]), 
         .B(n38_c), .C(data_squence[4]), .Z(n7928)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam data_squence_31__I_0_92_i34_3_lut_4_lut_then_3_lut.init = 16'he4e4;
    LUT4 i1_4_lut_adj_151 (.A(n6566), .B(n7_adj_511), .C(n9_adj_513), 
         .D(data_squence[11]), .Z(n31_adj_500)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[9:40])
    defparam i1_4_lut_adj_151.init = 16'hfeff;
    LUT4 i1_4_lut_adj_152 (.A(n7013), .B(n6554), .C(n6578), .D(data_squence[18]), 
         .Z(n6566)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[9:40])
    defparam i1_4_lut_adj_152.init = 16'hfffd;
    LUT4 i6668_2_lut (.A(data_squence[10]), .B(data_squence[7]), .Z(n7013)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6668_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_153 (.A(data_squence[12]), .B(data_squence[11]), 
         .C(data_squence[5]), .Z(n6860)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_3_lut_adj_153.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_154 (.A(data_squence[12]), .B(data_squence[11]), 
         .C(data_squence[5]), .D(data_squence[13]), .Z(n6666)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_3_lut_4_lut_adj_154.init = 16'hffef;
    LUT4 i1_2_lut_adj_155 (.A(data_squence[22]), .B(data_squence[8]), .Z(n6554)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[9:40])
    defparam i1_2_lut_adj_155.init = 16'heeee;
    LUT4 i1_2_lut_rep_195 (.A(data_squence[17]), .B(data_squence[16]), .Z(n7919)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(77[9:40])
    defparam i1_2_lut_rep_195.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_156 (.A(data_squence[17]), .B(data_squence[16]), 
         .C(data_squence[10]), .D(data_squence[15]), .Z(n6676)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(77[9:40])
    defparam i1_3_lut_4_lut_adj_156.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_157 (.A(data_squence[17]), .B(data_squence[16]), 
         .C(data_squence[14]), .D(data_squence[15]), .Z(n6754)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(77[9:40])
    defparam i1_3_lut_4_lut_adj_157.init = 16'hfffe;
    LUT4 i1_3_lut_rep_196 (.A(data_squence[22]), .B(data_squence[21]), .C(data_squence[23]), 
         .Z(n7920)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_3_lut_rep_196.init = 16'hfefe;
    LUT4 i1_4_lut_adj_158 (.A(n6592), .B(data_squence[15]), .C(data_squence[17]), 
         .D(data_squence[19]), .Z(n9_adj_513)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_4_lut_adj_158.init = 16'hfffe;
    LUT4 i1_2_lut_adj_159 (.A(data_squence[21]), .B(data_squence[12]), .Z(n6592)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_adj_159.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_160 (.A(data_squence[22]), .B(data_squence[21]), 
         .C(data_squence[23]), .D(data_squence[16]), .Z(n6932)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_4_lut_adj_160.init = 16'hfeff;
    LUT4 i1_2_lut_rep_178_4_lut (.A(data_squence[22]), .B(data_squence[21]), 
         .C(data_squence[23]), .D(data_squence[12]), .Z(n7902)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_rep_178_4_lut.init = 16'hfeff;
    LUT4 data_squence_31__I_0_92_i73_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n45), .D(n7150), .Z(n73)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i73_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_161 (.A(n1935), .B(n6670), .C(n6676), .D(n6668), 
         .Z(n31_adj_498)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(77[9:40])
    defparam i1_4_lut_adj_161.init = 16'hfffe;
    LUT4 i1_4_lut_adj_162 (.A(n6666), .B(data_squence[2]), .C(data_squence[8]), 
         .D(data_squence[3]), .Z(n6670)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_4_lut_adj_162.init = 16'hfffb;
    LUT4 data_squence_31__I_0_92_i66_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n74), .D(n7929), .Z(n66)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i66_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i77_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n49), .D(n45), .Z(n77)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i77_3_lut_4_lut.init = 16'hf960;
    LUT4 i6759_3_lut_3_lut (.A(seq_offect_valid), .B(n38), .C(n49), .Z(\os_data_15__N_127[0] )) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam i6759_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_4_lut_adj_163 (.A(n6802), .B(n6804), .C(data_squence[5]), 
         .D(n6794), .Z(n31_adj_499)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_163.init = 16'hffef;
    LUT4 i1_4_lut_adj_164 (.A(n7027), .B(n6786), .C(data_squence[1]), 
         .D(data_squence[15]), .Z(n6804)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_164.init = 16'hffdf;
    LUT4 i1_4_lut_adj_165 (.A(data_squence[16]), .B(data_squence[9]), .C(data_squence[10]), 
         .D(data_squence[8]), .Z(n6794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_165.init = 16'hfffe;
    LUT4 i6682_2_lut (.A(data_squence[4]), .B(data_squence[3]), .Z(n7027)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6682_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_166 (.A(data_squence[6]), .B(data_squence[2]), .Z(n6786)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_166.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i34_3_lut_4_lut_else_3_lut (.A(seq_offset[2]), 
         .B(n38_c), .C(data_squence[3]), .D(seq_offset[1]), .Z(n7927)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam data_squence_31__I_0_92_i34_3_lut_4_lut_else_3_lut.init = 16'he4d8;
    LUT4 i2652_4_lut (.A(n187[0]), .B(n31_adj_499), .C(n31_adj_498), .D(n31_adj_496), 
         .Z(found_offect[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B ((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(78[5:88])
    defparam i2652_4_lut.init = 16'hb3f3;
    LUT4 i1_2_lut_rep_153 (.A(n31_c), .B(n31_adj_496), .Z(n7877)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_rep_153.init = 16'h8888;
    LUT4 i2649_4_lut (.A(n166[0]), .B(n31_c), .C(n31_adj_503), .D(n31_adj_502), 
         .Z(n187[0])) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[5:88])
    defparam i2649_4_lut.init = 16'h8c0c;
    LUT4 i2000_1_lut_rep_202 (.A(align_rst_n_d), .Z(n7926)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(33[14] 35[8])
    defparam i2000_1_lut_rep_202.init = 16'h5555;
    LUT4 i1_2_lut_4_lut_4_lut (.A(align_rst_n_d), .B(raw_data_out_valid), 
         .C(n38), .D(seq_offect_valid), .Z(sys_clk_c_enable_81)) /* synthesis lut_function=(!(A (((D)+!C)+!B))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(33[14] 35[8])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h55d5;
    LUT4 i1_4_lut_adj_167 (.A(n6422), .B(n5_adj_515), .C(n1942), .D(data_squence[11]), 
         .Z(n31_adj_512)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_4_lut_adj_167.init = 16'hfeff;
    LUT4 i1_2_lut_2_lut (.A(align_rst_n_d), .B(raw_data_out_valid), .Z(sys_clk_c_enable_112)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(33[14] 35[8])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_adj_168 (.A(data_squence[12]), .B(n6676), .C(data_squence[9]), 
         .D(n7897), .Z(n6422)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_4_lut_adj_168.init = 16'hffdf;
    LUT4 data_squence_31__I_0_92_i76_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n7115), .D(n7148), .Z(n76)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i76_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_169 (.A(n6588), .B(n7_adj_511), .C(n9_adj_513), 
         .D(data_squence[8]), .Z(n31_adj_502)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_169.init = 16'hfeff;
    LUT4 data_squence_31__I_0_92_i112_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n88), .D(n80), .Z(n112)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i112_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i111_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n87), .D(n79), .Z(n111)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i111_3_lut_4_lut.init = 16'hf960;
    LUT4 i2646_4_lut (.A(n31_adj_512), .B(n31_adj_500), .C(n1), .D(n623[0]), 
         .Z(n166[0])) /* synthesis lut_function=(A ((C (D))+!B)+!A ((C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[5:87])
    defparam i2646_4_lut.init = 16'hf373;
    LUT4 i1_4_lut_adj_170 (.A(n7007), .B(n6576), .C(n6578), .D(data_squence[18]), 
         .Z(n6588)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_4_lut_adj_170.init = 16'hfffd;
    LUT4 i6662_2_lut (.A(data_squence[10]), .B(data_squence[6]), .Z(n7007)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6662_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_171 (.A(data_squence[11]), .B(data_squence[7]), .Z(n6576)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_2_lut_adj_171.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i78_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n50), .D(n46), .Z(n78)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i78_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_172 (.A(n7073), .B(n7901), .C(n6754), .D(n6752), 
         .Z(n31_adj_503)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_4_lut_adj_172.init = 16'hfffd;
    PFUMX i7138 (.BLUT(n38), .ALUT(n7868), .C0(seq_offect_valid), .Z(n7869));
    LUT4 i6725_4_lut (.A(data_squence[8]), .B(data_squence[9]), .C(data_squence[7]), 
         .D(data_squence[5]), .Z(n7073)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6725_4_lut.init = 16'h8000;
    LUT4 data_squence_31__I_0_92_i87_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n59), .D(n7123), .Z(n87)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i87_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_173 (.A(n6174), .B(n31), .C(n4_adj_509), .D(n1920), 
         .Z(n5_adj_516)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_4_lut_adj_173.init = 16'h333b;
    LUT4 data_squence_31__I_0_92_i80_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n52), .D(n7115), .Z(n80)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i80_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i79_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), 
         .C(n7119), .D(n7152), .Z(n79)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i79_3_lut_4_lut.init = 16'hf960;
    LUT4 n76_bdd_4_lut_7175 (.A(n7891), .B(n56), .C(n52), .D(n7898), 
         .Z(n7794)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n76_bdd_4_lut_7175.init = 16'h4450;
    LUT4 data_squence_31__I_0_92_i28_3_lut (.A(data_squence[27]), .B(data_squence[28]), 
         .C(seq_offset[0]), .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i28_3_lut.init = 16'hcaca;
    LUT4 i2644_4_lut (.A(n31_adj_497), .B(n31_adj_507), .C(n2546), .D(n5_adj_516), 
         .Z(n623[0])) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(69[5:87])
    defparam i2644_4_lut.init = 16'hc444;
    LUT4 n75_bdd_4_lut_7157 (.A(n7891), .B(n7119), .C(n7123), .D(n7898), 
         .Z(n7805)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam n75_bdd_4_lut_7157.init = 16'h5044;
    LUT4 data_squence_31__I_0_92_i30_3_lut (.A(data_squence[29]), .B(data_squence[30]), 
         .C(seq_offset[0]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i30_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i24_3_lut (.A(data_squence[23]), .B(data_squence[24]), 
         .C(seq_offset[0]), .Z(n24)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i24_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i26_3_lut (.A(data_squence[25]), .B(data_squence[26]), 
         .C(seq_offset[0]), .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i26_3_lut.init = 16'hcaca;
    PFUMX i6762 (.BLUT(n66), .ALUT(n7182), .C0(n7292), .Z(os_data_15__N_127[1]));
    LUT4 n75_bdd_4_lut_7098 (.A(n59), .B(n7898), .C(n31_adj_501), .D(n7914), 
         .Z(n7803)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam n75_bdd_4_lut_7098.init = 16'h22e2;
    LUT4 i6966_2_lut_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(seq_offect_valid), 
         .D(seq_offset[3]), .Z(n7283)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam i6966_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 data_squence_31__I_0_92_i20_3_lut (.A(data_squence[19]), .B(data_squence[20]), 
         .C(seq_offset[0]), .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i20_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i22_3_lut (.A(data_squence[21]), .B(data_squence[22]), 
         .C(seq_offset[0]), .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i22_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i16_3_lut (.A(data_squence[15]), .B(data_squence[16]), 
         .C(seq_offset[0]), .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i16_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i18_3_lut (.A(data_squence[17]), .B(data_squence[18]), 
         .C(seq_offset[0]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i18_3_lut.init = 16'hcaca;
    PFUMX data_squence_31__I_0_92_i143 (.BLUT(n111), .ALUT(n6136), .C0(n7891), 
          .Z(os_data_15__N_127[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=189, LSE_RLINE=199 */ ;
    LUT4 i6757_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), .C(n73), .D(n7674), 
         .Z(n7179)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam i6757_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_174 (.A(n2025), .B(n6248), .C(n6240), .D(data_squence[16]), 
         .Z(n31_adj_505)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_174.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut_adj_175 (.A(n7920), .B(data_squence[12]), .C(n5_adj_508), 
         .D(n2016), .Z(n6398)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_3_lut_4_lut_adj_175.init = 16'hfffb;
    LUT4 i1_2_lut_rep_179 (.A(data_squence[18]), .B(data_squence[20]), .Z(n7903)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_rep_179.init = 16'heeee;
    LUT4 i1_3_lut_3_lut_3_lut_4_lut (.A(seq_offset[2]), .B(n7915), .C(data_squence[31]), 
         .D(seq_offset[3]), .Z(n6135)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_3_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 data_squence_31__I_0_92_i106_3_lut_4_lut (.A(seq_offset[3]), .B(n7899), 
         .C(n82), .D(n74), .Z(n106)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i106_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_176 (.A(n7047), .B(n2016), .C(n7912), .D(n6230), 
         .Z(n6248)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_176.init = 16'hfffd;
    LUT4 i6721_2_lut_rep_148_3_lut_4_lut (.A(n31_c), .B(n31_adj_496), .C(n31_adj_499), 
         .D(n31_adj_498), .Z(n7872)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i6721_2_lut_rep_148_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_adj_177 (.A(data_squence[18]), .B(data_squence[20]), 
         .C(data_squence[13]), .Z(n5_adj_515)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_3_lut_adj_177.init = 16'hefef;
    LUT4 i1_4_lut_adj_178 (.A(data_squence[26]), .B(n7911), .C(data_squence[15]), 
         .D(data_squence[28]), .Z(n6240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_178.init = 16'hfffe;
    LUT4 i6701_2_lut (.A(data_squence[14]), .B(data_squence[17]), .Z(n7047)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6701_2_lut.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i14_3_lut (.A(data_squence[13]), .B(data_squence[14]), 
         .C(seq_offset[0]), .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i14_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_179 (.A(data_squence[23]), .B(data_squence[27]), .Z(n6230)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_adj_179.init = 16'heeee;
    LUT4 i1_2_lut_adj_180 (.A(data_squence[24]), .B(data_squence[25]), .Z(n2016)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_adj_180.init = 16'heeee;
    LUT4 i1_4_lut_adj_181 (.A(n6542), .B(n5_adj_515), .C(n1942), .D(n7897), 
         .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_4_lut_adj_181.init = 16'hfffe;
    LUT4 n77_bdd_3_lut_7087_4_lut (.A(seq_offset[3]), .B(n7899), .C(n7898), 
         .D(n61), .Z(n7782)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+!(D))))) */ ;
    defparam n77_bdd_3_lut_7087_4_lut.init = 16'h0900;
    LUT4 data_squence_31__I_0_92_i10_3_lut (.A(data_squence[9]), .B(data_squence[10]), 
         .C(seq_offset[0]), .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i10_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i12_3_lut (.A(data_squence[11]), .B(data_squence[12]), 
         .C(seq_offset[0]), .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i12_3_lut.init = 16'hcaca;
    LUT4 n307_bdd_2_lut_7131 (.A(n7869), .B(raw_data_out_valid), .Z(data_out_15__N_208[11])) /* synthesis lut_function=(A (B)) */ ;
    defparam n307_bdd_2_lut_7131.init = 16'h8888;
    LUT4 n73_bdd_4_lut_7146 (.A(n7891), .B(n49), .C(n53), .D(n7898), 
         .Z(n7816)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam n73_bdd_4_lut_7146.init = 16'h5044;
    LUT4 i1_4_lut_adj_182 (.A(n1920), .B(data_squence[17]), .C(data_squence[16]), 
         .D(n6258), .Z(n6542)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_4_lut_adj_182.init = 16'hffbf;
    LUT4 i1_2_lut_adj_183 (.A(data_squence[27]), .B(data_squence[28]), .Z(n6258)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_adj_183.init = 16'heeee;
    LUT4 i1_4_lut_adj_184 (.A(data_squence[17]), .B(n2025), .C(n6178), 
         .D(data_squence[19]), .Z(n4_adj_509)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_184.init = 16'hfdff;
    LUT4 i1_2_lut_adj_185 (.A(data_squence[29]), .B(data_squence[18]), .Z(n2025)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_adj_185.init = 16'hbbbb;
    LUT4 i1_2_lut_adj_186 (.A(data_squence[14]), .B(data_squence[19]), .Z(n1942)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_adj_186.init = 16'heeee;
    LUT4 i1_2_lut_rep_152 (.A(n31_adj_497), .B(n2546), .Z(n7876)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_rep_152.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_187 (.A(data_squence[18]), .B(n7918), .C(data_squence[13]), 
         .D(n6997), .Z(n6838)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(74[9:40])
    defparam i1_2_lut_4_lut_adj_187.init = 16'hfeff;
    
endmodule
//
// Verilog Description of module mipi_multi_lane_aligner
//

module mipi_multi_lane_aligner (sys_clk_c, hs_burst_flag_N_67, byte_align_data_lane1, 
            GND_net, byte_align_data_lane0, multi_lane_align_data_out, 
            hs_burst_flag_c, lanes_data_in_valid, multi_lane_align_data_out_valid, 
            key1_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    output hs_burst_flag_N_67;
    input [15:0]byte_align_data_lane1;
    input GND_net;
    input [15:0]byte_align_data_lane0;
    output [31:0]multi_lane_align_data_out;
    input hs_burst_flag_c;
    input [1:0]lanes_data_in_valid;
    output multi_lane_align_data_out_valid;
    input key1_c;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    wire [3:0]\fifo_count[0] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(29[11:21])
    wire [3:0]n322;
    wire [3:0]\fifo_count[1] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(29[11:21])
    wire [3:0]n323;
    wire [3:0]\fifo_wr_ptr[0] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(28[11:22])
    wire [1:0]need_write;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(42[16:26])
    wire [31:0]fifo_wr_ptr_0__3__N_342;
    
    wire fifo_empty_0__N_368, n7900, n7886;
    wire [3:0]\fifo_wr_ptr[1] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(28[11:22])
    wire [3:0]\fifo_rd_ptr[1] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(27[11:22])
    wire [15:0]lanes_data_out_31__N_402;
    
    wire n849, sys_clk_c_enable_76;
    wire [31:0]fifo_rd_ptr_0__3__N_332;
    
    wire n4;
    wire [3:0]\fifo_rd_ptr[0] ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(27[11:22])
    wire [15:0]lanes_data_out_31__N_434;
    
    wire fifo_memory_N_467;
    wire [31:0]fifo_wr_ptr_0__3__N_350;
    
    wire n7885;
    wire [31:0]fifo_rd_ptr_0__3__N_324;
    wire [3:0]n854;
    wire [31:0]fifo_count_0__3__N_363;
    
    wire n7888;
    wire [3:0]n853;
    
    wire n7916, n1416, n7917, n4_adj_495;
    wire [31:0]fifo_count_0__3__N_387;
    
    wire n7887;
    
    FD1S3IX fifo_count_1___i8 (.D(n322[3]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[0] [3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i8.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i7 (.D(n322[2]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[0] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i7.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i6 (.D(n322[1]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[0] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i6.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i5 (.D(n322[0]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[0] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i5.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i4 (.D(n323[3]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[1] [3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i4.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i3 (.D(n323[2]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[1] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i3.GSR = "ENABLED";
    FD1S3IX fifo_count_1___i2 (.D(n323[1]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[1] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i2.GSR = "ENABLED";
    FD1P3IX fifo_wr_ptr_1___i7 (.D(fifo_wr_ptr_0__3__N_342[2]), .SP(need_write[0]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[0] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i7.GSR = "ENABLED";
    LUT4 need_write_1__I_0_2_lut_rep_162_3_lut (.A(fifo_empty_0__N_368), .B(n7900), 
         .C(need_write[1]), .Z(n7886)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam need_write_1__I_0_2_lut_rep_162_3_lut.init = 16'h7070;
    DPR16X4C fifo_memory_10 (.DI0(byte_align_data_lane1[12]), .DI1(byte_align_data_lane1[13]), 
            .DI2(byte_align_data_lane1[14]), .DI3(byte_align_data_lane1[15]), 
            .WAD0(\fifo_wr_ptr[1] [0]), .WAD1(\fifo_wr_ptr[1] [1]), .WAD2(\fifo_wr_ptr[1] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(n849), .RAD0(\fifo_rd_ptr[1] [0]), 
            .RAD1(\fifo_rd_ptr[1] [1]), .RAD2(\fifo_rd_ptr[1] [2]), .RAD3(GND_net), 
            .DO0(lanes_data_out_31__N_402[12]), .DO1(lanes_data_out_31__N_402[13]), 
            .DO2(lanes_data_out_31__N_402[14]), .DO3(lanes_data_out_31__N_402[15]));
    defparam fifo_memory_10.initval = "0x0000000000000000";
    FD1P3IX fifo_wr_ptr_1___i6 (.D(fifo_wr_ptr_0__3__N_342[1]), .SP(need_write[0]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[0] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i6.GSR = "ENABLED";
    FD1P3IX fifo_wr_ptr_1___i5 (.D(fifo_wr_ptr_0__3__N_342[0]), .SP(need_write[0]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[0] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i5.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i1 (.D(fifo_rd_ptr_0__3__N_332[0]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[1] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i1.GSR = "ENABLED";
    LUT4 i770_2_lut (.A(\fifo_count[1] [1]), .B(\fifo_count[1] [0]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam i770_2_lut.init = 16'heeee;
    DPR16X4C fifo_memory_02 (.DI0(byte_align_data_lane0[4]), .DI1(byte_align_data_lane0[5]), 
            .DI2(byte_align_data_lane0[6]), .DI3(byte_align_data_lane0[7]), 
            .WAD0(\fifo_wr_ptr[0] [0]), .WAD1(\fifo_wr_ptr[0] [1]), .WAD2(\fifo_wr_ptr[0] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(fifo_memory_N_467), 
            .RAD0(\fifo_rd_ptr[0] [0]), .RAD1(\fifo_rd_ptr[0] [1]), .RAD2(\fifo_rd_ptr[0] [2]), 
            .RAD3(GND_net), .DO0(lanes_data_out_31__N_434[4]), .DO1(lanes_data_out_31__N_434[5]), 
            .DO2(lanes_data_out_31__N_434[6]), .DO3(lanes_data_out_31__N_434[7]));
    defparam fifo_memory_02.initval = "0x0000000000000000";
    FD1P3IX fifo_wr_ptr_1___i3 (.D(fifo_wr_ptr_0__3__N_350[2]), .SP(need_write[1]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[1] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i3.GSR = "ENABLED";
    FD1P3IX fifo_wr_ptr_1___i2 (.D(fifo_wr_ptr_0__3__N_350[1]), .SP(need_write[1]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[1] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i2.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i0 (.D(lanes_data_out_31__N_434[0]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i0.GSR = "ENABLED";
    LUT4 fifo_count_0__3__I_25_2_lut_rep_161_3_lut (.A(fifo_empty_0__N_368), 
         .B(n7900), .C(need_write[1]), .Z(n7885)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam fifo_count_0__3__I_25_2_lut_rep_161_3_lut.init = 16'h0808;
    LUT4 mux_21_i1_3_lut_4_lut_3_lut_4_lut (.A(fifo_empty_0__N_368), .B(n7900), 
         .C(\fifo_count[0] [0]), .D(need_write[0]), .Z(n322[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam mux_21_i1_3_lut_4_lut_3_lut_4_lut.init = 16'h8778;
    FD1P3IX fifo_wr_ptr_1___i1 (.D(fifo_wr_ptr_0__3__N_350[0]), .SP(need_write[1]), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_wr_ptr[1] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_wr_ptr_1___i1.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(\fifo_rd_ptr[0] [1]), .B(\fifo_rd_ptr[0] [0]), .C(\fifo_rd_ptr[0] [2]), 
         .Z(fifo_rd_ptr_0__3__N_324[2])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i1_3_lut (.A(\fifo_rd_ptr[0] [2]), .B(\fifo_rd_ptr[0] [1]), .C(\fifo_rd_ptr[0] [0]), 
         .Z(fifo_rd_ptr_0__3__N_324[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut.init = 16'h1414;
    FD1S3IX fifo_count_1___i1 (.D(n323[0]), .CK(sys_clk_c), .CD(hs_burst_flag_N_67), 
            .Q(\fifo_count[1] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_count_1___i1.GSR = "ENABLED";
    LUT4 i6953_2_lut (.A(\fifo_rd_ptr[0] [2]), .B(\fifo_rd_ptr[0] [0]), 
         .Z(fifo_rd_ptr_0__3__N_324[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6953_2_lut.init = 16'h1111;
    DPR16X4C fifo_memory_13 (.DI0(byte_align_data_lane1[0]), .DI1(byte_align_data_lane1[1]), 
            .DI2(byte_align_data_lane1[2]), .DI3(byte_align_data_lane1[3]), 
            .WAD0(\fifo_wr_ptr[1] [0]), .WAD1(\fifo_wr_ptr[1] [1]), .WAD2(\fifo_wr_ptr[1] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(n849), .RAD0(\fifo_rd_ptr[1] [0]), 
            .RAD1(\fifo_rd_ptr[1] [1]), .RAD2(\fifo_rd_ptr[1] [2]), .RAD3(GND_net), 
            .DO0(lanes_data_out_31__N_402[0]), .DO1(lanes_data_out_31__N_402[1]), 
            .DO2(lanes_data_out_31__N_402[2]), .DO3(lanes_data_out_31__N_402[3]));
    defparam fifo_memory_13.initval = "0x0000000000000000";
    DPR16X4C fifo_memory_12 (.DI0(byte_align_data_lane1[4]), .DI1(byte_align_data_lane1[5]), 
            .DI2(byte_align_data_lane1[6]), .DI3(byte_align_data_lane1[7]), 
            .WAD0(\fifo_wr_ptr[1] [0]), .WAD1(\fifo_wr_ptr[1] [1]), .WAD2(\fifo_wr_ptr[1] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(n849), .RAD0(\fifo_rd_ptr[1] [0]), 
            .RAD1(\fifo_rd_ptr[1] [1]), .RAD2(\fifo_rd_ptr[1] [2]), .RAD3(GND_net), 
            .DO0(lanes_data_out_31__N_402[4]), .DO1(lanes_data_out_31__N_402[5]), 
            .DO2(lanes_data_out_31__N_402[6]), .DO3(lanes_data_out_31__N_402[7]));
    defparam fifo_memory_12.initval = "0x0000000000000000";
    DPR16X4C fifo_memory_00 (.DI0(byte_align_data_lane0[12]), .DI1(byte_align_data_lane0[13]), 
            .DI2(byte_align_data_lane0[14]), .DI3(byte_align_data_lane0[15]), 
            .WAD0(\fifo_wr_ptr[0] [0]), .WAD1(\fifo_wr_ptr[0] [1]), .WAD2(\fifo_wr_ptr[0] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(fifo_memory_N_467), 
            .RAD0(\fifo_rd_ptr[0] [0]), .RAD1(\fifo_rd_ptr[0] [1]), .RAD2(\fifo_rd_ptr[0] [2]), 
            .RAD3(GND_net), .DO0(lanes_data_out_31__N_434[12]), .DO1(lanes_data_out_31__N_434[13]), 
            .DO2(lanes_data_out_31__N_434[14]), .DO3(lanes_data_out_31__N_434[15]));
    defparam fifo_memory_00.initval = "0x0000000000000000";
    DPR16X4C fifo_memory_11 (.DI0(byte_align_data_lane1[8]), .DI1(byte_align_data_lane1[9]), 
            .DI2(byte_align_data_lane1[10]), .DI3(byte_align_data_lane1[11]), 
            .WAD0(\fifo_wr_ptr[1] [0]), .WAD1(\fifo_wr_ptr[1] [1]), .WAD2(\fifo_wr_ptr[1] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(n849), .RAD0(\fifo_rd_ptr[1] [0]), 
            .RAD1(\fifo_rd_ptr[1] [1]), .RAD2(\fifo_rd_ptr[1] [2]), .RAD3(GND_net), 
            .DO0(lanes_data_out_31__N_402[8]), .DO1(lanes_data_out_31__N_402[9]), 
            .DO2(lanes_data_out_31__N_402[10]), .DO3(lanes_data_out_31__N_402[11]));
    defparam fifo_memory_11.initval = "0x0000000000000000";
    DPR16X4C fifo_memory_01 (.DI0(byte_align_data_lane0[8]), .DI1(byte_align_data_lane0[9]), 
            .DI2(byte_align_data_lane0[10]), .DI3(byte_align_data_lane0[11]), 
            .WAD0(\fifo_wr_ptr[0] [0]), .WAD1(\fifo_wr_ptr[0] [1]), .WAD2(\fifo_wr_ptr[0] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(fifo_memory_N_467), 
            .RAD0(\fifo_rd_ptr[0] [0]), .RAD1(\fifo_rd_ptr[0] [1]), .RAD2(\fifo_rd_ptr[0] [2]), 
            .RAD3(GND_net), .DO0(lanes_data_out_31__N_434[8]), .DO1(lanes_data_out_31__N_434[9]), 
            .DO2(lanes_data_out_31__N_434[10]), .DO3(lanes_data_out_31__N_434[11]));
    defparam fifo_memory_01.initval = "0x0000000000000000";
    LUT4 i2_3_lut_adj_107 (.A(\fifo_rd_ptr[1] [1]), .B(\fifo_rd_ptr[1] [0]), 
         .C(\fifo_rd_ptr[1] [2]), .Z(fifo_rd_ptr_0__3__N_332[2])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_107.init = 16'h0808;
    DPR16X4C fifo_memory_03 (.DI0(byte_align_data_lane0[0]), .DI1(byte_align_data_lane0[1]), 
            .DI2(byte_align_data_lane0[2]), .DI3(byte_align_data_lane0[3]), 
            .WAD0(\fifo_wr_ptr[0] [0]), .WAD1(\fifo_wr_ptr[0] [1]), .WAD2(\fifo_wr_ptr[0] [2]), 
            .WAD3(GND_net), .WCK(sys_clk_c), .WRE(fifo_memory_N_467), 
            .RAD0(\fifo_rd_ptr[0] [0]), .RAD1(\fifo_rd_ptr[0] [1]), .RAD2(\fifo_rd_ptr[0] [2]), 
            .RAD3(GND_net), .DO0(lanes_data_out_31__N_434[0]), .DO1(lanes_data_out_31__N_434[1]), 
            .DO2(lanes_data_out_31__N_434[2]), .DO3(lanes_data_out_31__N_434[3]));
    defparam fifo_memory_03.initval = "0x0000000000000000";
    PFUMX mux_21_i4 (.BLUT(n854[3]), .ALUT(fifo_count_0__3__N_363[3]), .C0(n7888), 
          .Z(n322[3]));
    LUT4 i1_3_lut_adj_108 (.A(\fifo_rd_ptr[1] [2]), .B(\fifo_rd_ptr[1] [1]), 
         .C(\fifo_rd_ptr[1] [0]), .Z(fifo_rd_ptr_0__3__N_332[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_108.init = 16'h1414;
    LUT4 hs_burst_flag_I_0_1_lut (.A(hs_burst_flag_c), .Z(hs_burst_flag_N_67)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(61[18] 63[12])
    defparam hs_burst_flag_I_0_1_lut.init = 16'h5555;
    FD1P3IX lanes_data_out__i31 (.D(lanes_data_out_31__N_402[15]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[31])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i31.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i30 (.D(lanes_data_out_31__N_402[14]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[30])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i30.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i29 (.D(lanes_data_out_31__N_402[13]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[29])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i29.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i28 (.D(lanes_data_out_31__N_402[12]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[28])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i28.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i27 (.D(lanes_data_out_31__N_402[11]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[27])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i27.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i26 (.D(lanes_data_out_31__N_402[10]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[26])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i26.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i25 (.D(lanes_data_out_31__N_402[9]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[25])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i25.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i24 (.D(lanes_data_out_31__N_402[8]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[24])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i24.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i23 (.D(lanes_data_out_31__N_402[7]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[23])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i23.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i22 (.D(lanes_data_out_31__N_402[6]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[22])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i22.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i21 (.D(lanes_data_out_31__N_402[5]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[21])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i21.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i20 (.D(lanes_data_out_31__N_402[4]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[20])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i20.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i19 (.D(lanes_data_out_31__N_402[3]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[19])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i19.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i18 (.D(lanes_data_out_31__N_402[2]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[18])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i18.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i17 (.D(lanes_data_out_31__N_402[1]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[17])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i17.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i16 (.D(lanes_data_out_31__N_402[0]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[16])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i16.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i15 (.D(lanes_data_out_31__N_434[15]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i15.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i14 (.D(lanes_data_out_31__N_434[14]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i14.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i13 (.D(lanes_data_out_31__N_434[13]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i13.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i12 (.D(lanes_data_out_31__N_434[12]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i12.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i11 (.D(lanes_data_out_31__N_434[11]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i11.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i10 (.D(lanes_data_out_31__N_434[10]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i10.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i9 (.D(lanes_data_out_31__N_434[9]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i9.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i8 (.D(lanes_data_out_31__N_434[8]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i8.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i7 (.D(lanes_data_out_31__N_434[7]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i7.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i6 (.D(lanes_data_out_31__N_434[6]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i6.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i5 (.D(lanes_data_out_31__N_434[5]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i5.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i4 (.D(lanes_data_out_31__N_434[4]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i4.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i3 (.D(lanes_data_out_31__N_434[3]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i3.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i2 (.D(lanes_data_out_31__N_434[2]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i2.GSR = "ENABLED";
    FD1P3IX lanes_data_out__i1 (.D(lanes_data_out_31__N_434[1]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(multi_lane_align_data_out[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out__i1.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i7 (.D(fifo_rd_ptr_0__3__N_324[2]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[0] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i7.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i6 (.D(fifo_rd_ptr_0__3__N_324[1]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[0] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i6.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i5 (.D(fifo_rd_ptr_0__3__N_324[0]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[0] [0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i5.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i3 (.D(fifo_rd_ptr_0__3__N_332[2]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[1] [2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i3.GSR = "ENABLED";
    FD1P3IX fifo_rd_ptr_1___i2 (.D(fifo_rd_ptr_0__3__N_332[1]), .SP(sys_clk_c_enable_76), 
            .CD(hs_burst_flag_N_67), .CK(sys_clk_c), .Q(\fifo_rd_ptr[1] [1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam fifo_rd_ptr_1___i2.GSR = "ENABLED";
    LUT4 mux_507_i3_3_lut_4_lut (.A(need_write[1]), .B(sys_clk_c_enable_76), 
         .C(n4), .D(\fifo_count[1] [2]), .Z(n853[2])) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(106[26:56])
    defparam mux_507_i3_3_lut_4_lut.init = 16'hfb04;
    LUT4 lanes_data_in_valid_1__I_0_i1_4_lut (.A(lanes_data_in_valid[0]), 
         .B(n7916), .C(\fifo_count[0] [0]), .D(\fifo_count[0] [2]), .Z(need_write[0])) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(47[13:58])
    defparam lanes_data_in_valid_1__I_0_i1_4_lut.init = 16'h8aaa;
    LUT4 \fifo_count_1[[1__bdd_4_lut  (.A(\fifo_count[1] [1]), .B(need_write[1]), 
         .C(\fifo_count[1] [0]), .D(sys_clk_c_enable_76), .Z(n323[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam \fifo_count_1[[1__bdd_4_lut .init = 16'ha96a;
    LUT4 \fifo_count_0[[1__bdd_4_lut  (.A(\fifo_count[0] [1]), .B(need_write[0]), 
         .C(\fifo_count[0] [0]), .D(sys_clk_c_enable_76), .Z(n322[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam \fifo_count_0[[1__bdd_4_lut .init = 16'ha96a;
    FD1S3IX lanes_data_out_valid_131 (.D(fifo_empty_0__N_368), .CK(sys_clk_c), 
            .CD(n1416), .Q(multi_lane_align_data_out_valid)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=25, LSE_RCOL=2, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam lanes_data_out_valid_131.GSR = "ENABLED";
    LUT4 i598_3_lut_4_lut (.A(\fifo_count[0] [1]), .B(\fifo_count[0] [0]), 
         .C(\fifo_count[0] [2]), .D(\fifo_count[0] [3]), .Z(fifo_count_0__3__N_363[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam i598_3_lut_4_lut.init = 16'h7f80;
    LUT4 i591_2_lut_3_lut (.A(\fifo_count[0] [1]), .B(\fifo_count[0] [0]), 
         .C(\fifo_count[0] [2]), .Z(fifo_count_0__3__N_363[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam i591_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_3_lut (.A(hs_burst_flag_c), .B(key1_c), .C(need_write[1]), 
         .Z(n849)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_109 (.A(hs_burst_flag_c), .B(key1_c), .C(need_write[0]), 
         .Z(fifo_memory_N_467)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(74[14] 111[8])
    defparam i1_2_lut_3_lut_adj_109.init = 16'h8080;
    LUT4 i1_2_lut_rep_192 (.A(\fifo_count[0] [1]), .B(\fifo_count[0] [3]), 
         .Z(n7916)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(37[27:60])
    defparam i1_2_lut_rep_192.init = 16'heeee;
    LUT4 i1_3_lut_4_lut (.A(\fifo_count[0] [1]), .B(\fifo_count[0] [3]), 
         .C(\fifo_count[0] [0]), .D(\fifo_count[0] [2]), .Z(fifo_empty_0__N_368)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(37[27:60])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_193 (.A(\fifo_count[1] [1]), .B(\fifo_count[1] [3]), 
         .Z(n7917)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(38[28:51])
    defparam i1_2_lut_rep_193.init = 16'heeee;
    LUT4 i1_3_lut_rep_176_4_lut (.A(\fifo_count[1] [1]), .B(\fifo_count[1] [3]), 
         .C(\fifo_count[1] [0]), .D(\fifo_count[1] [2]), .Z(n7900)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(38[28:51])
    defparam i1_3_lut_rep_176_4_lut.init = 16'hfffe;
    LUT4 i6963_2_lut (.A(\fifo_wr_ptr[0] [2]), .B(\fifo_wr_ptr[0] [0]), 
         .Z(fifo_wr_ptr_0__3__N_342[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6963_2_lut.init = 16'h1111;
    LUT4 lanes_data_in_valid_1__I_0_i2_4_lut (.A(lanes_data_in_valid[1]), 
         .B(n7917), .C(\fifo_count[1] [0]), .D(\fifo_count[1] [2]), .Z(need_write[1])) /* synthesis lut_function=(A (B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(47[13:58])
    defparam lanes_data_in_valid_1__I_0_i2_4_lut.init = 16'h8aaa;
    LUT4 i6950_2_lut (.A(\fifo_rd_ptr[1] [2]), .B(\fifo_rd_ptr[1] [0]), 
         .Z(fifo_rd_ptr_0__3__N_332[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6950_2_lut.init = 16'h1111;
    LUT4 i2_3_lut_adj_110 (.A(\fifo_wr_ptr[1] [1]), .B(\fifo_wr_ptr[1] [0]), 
         .C(\fifo_wr_ptr[1] [2]), .Z(fifo_wr_ptr_0__3__N_350[2])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_110.init = 16'h0808;
    LUT4 i2_3_lut_adj_111 (.A(\fifo_wr_ptr[0] [1]), .B(\fifo_wr_ptr[0] [0]), 
         .C(\fifo_wr_ptr[0] [2]), .Z(fifo_wr_ptr_0__3__N_342[2])) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_111.init = 16'h0808;
    LUT4 i802_2_lut (.A(\fifo_count[0] [1]), .B(\fifo_count[0] [0]), .Z(n4_adj_495)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam i802_2_lut.init = 16'heeee;
    LUT4 i685_3_lut_4_lut (.A(\fifo_count[1] [1]), .B(\fifo_count[1] [0]), 
         .C(\fifo_count[1] [2]), .D(\fifo_count[1] [3]), .Z(fifo_count_0__3__N_387[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(105[37:57])
    defparam i685_3_lut_4_lut.init = 16'h7f80;
    LUT4 i678_2_lut_3_lut (.A(\fifo_count[1] [1]), .B(\fifo_count[1] [0]), 
         .C(\fifo_count[1] [2]), .Z(fifo_count_0__3__N_387[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(105[37:57])
    defparam i678_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_3_lut_adj_112 (.A(\fifo_wr_ptr[0] [2]), .B(\fifo_wr_ptr[0] [1]), 
         .C(\fifo_wr_ptr[0] [0]), .Z(fifo_wr_ptr_0__3__N_342[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_112.init = 16'h1414;
    LUT4 i1_3_lut_adj_113 (.A(\fifo_wr_ptr[1] [2]), .B(\fifo_wr_ptr[1] [1]), 
         .C(\fifo_wr_ptr[1] [0]), .Z(fifo_wr_ptr_0__3__N_350[1])) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_113.init = 16'h1414;
    LUT4 i6960_2_lut (.A(\fifo_wr_ptr[1] [2]), .B(\fifo_wr_ptr[1] [0]), 
         .Z(fifo_wr_ptr_0__3__N_350[0])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i6960_2_lut.init = 16'h1111;
    LUT4 mux_508_i3_3_lut_4_lut (.A(need_write[0]), .B(sys_clk_c_enable_76), 
         .C(n4_adj_495), .D(\fifo_count[0] [2]), .Z(n854[2])) /* synthesis lut_function=(A (D)+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(106[26:56])
    defparam mux_508_i3_3_lut_4_lut.init = 16'hfb04;
    LUT4 mux_507_i4_4_lut (.A(\fifo_count[1] [3]), .B(\fifo_count[1] [2]), 
         .C(n7885), .D(n4), .Z(n853[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam mux_507_i4_4_lut.init = 16'haa9a;
    PFUMX mux_22_i3 (.BLUT(n853[2]), .ALUT(fifo_count_0__3__N_387[2]), .C0(n7886), 
          .Z(n323[2]));
    LUT4 mux_508_i4_4_lut (.A(\fifo_count[0] [3]), .B(\fifo_count[0] [2]), 
         .C(n7887), .D(n4_adj_495), .Z(n854[3])) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(107[37:57])
    defparam mux_508_i4_4_lut.init = 16'haa9a;
    LUT4 need_write_0__I_0_146_2_lut_rep_164_3_lut (.A(fifo_empty_0__N_368), 
         .B(n7900), .C(need_write[0]), .Z(n7888)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam need_write_0__I_0_146_2_lut_rep_164_3_lut.init = 16'h7070;
    LUT4 fifo_count_0__3__I_20_2_lut_rep_163_3_lut (.A(fifo_empty_0__N_368), 
         .B(n7900), .C(need_write[0]), .Z(n7887)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam fifo_count_0__3__I_20_2_lut_rep_163_3_lut.init = 16'h0808;
    PFUMX mux_22_i4 (.BLUT(n853[3]), .ALUT(fifo_count_0__3__N_387[3]), .C0(n7886), 
          .Z(n323[3]));
    LUT4 i2653_2_lut_rep_169_4_lut (.A(\fifo_count[1] [2]), .B(n7917), .C(\fifo_count[1] [0]), 
         .D(fifo_empty_0__N_368), .Z(sys_clk_c_enable_76)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(38[28:51])
    defparam i2653_2_lut_rep_169_4_lut.init = 16'hfe00;
    LUT4 i6917_2_lut_4_lut (.A(\fifo_count[1] [2]), .B(n7917), .C(\fifo_count[1] [0]), 
         .D(hs_burst_flag_c), .Z(n1416)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(38[28:51])
    defparam i6917_2_lut_4_lut.init = 16'h01ff;
    PFUMX mux_21_i3 (.BLUT(n854[2]), .ALUT(fifo_count_0__3__N_363[2]), .C0(n7888), 
          .Z(n322[2]));
    LUT4 mux_22_i1_3_lut_4_lut_3_lut_4_lut (.A(fifo_empty_0__N_368), .B(n7900), 
         .C(\fifo_count[1] [0]), .D(need_write[1]), .Z(n323[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(C (D)+!C !(D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_multi_lane_aligner.v(56[9] 58[12])
    defparam mux_22_i1_3_lut_4_lut_3_lut_4_lut.init = 16'h8778;
    
endmodule
//
// Verilog Description of module dphy_raw_fifo
//

module dphy_raw_fifo (GND_net, q, rxhsbyteclk, sys_clk_c, dphy_raw_fifo_Reset, 
            dphy_raw_fifo_Q, VCC_net, dphy_raw_fifo_Empty, dphy_raw_fifo_RdEn) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input GND_net;
    input [31:0]q;
    input rxhsbyteclk;
    input sys_clk_c;
    input dphy_raw_fifo_Reset;
    output [31:0]dphy_raw_fifo_Q;
    input VCC_net;
    output dphy_raw_fifo_Empty;
    input dphy_raw_fifo_RdEn;
    
    wire rxhsbyteclk /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(99[21:32])
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    wire w_gcount_r24, w_gcount_r25, wcount_r4, w_gcount_r23, wcount_r3, 
        w_gcount_r21, w_gcount_r22, wcount_r1, w_gcount_r20, wcount_r0, 
        r_gcount_w22, r_gcount_w23, r_gcount_w24, r_gcount_w25, r_g2b_xor_cluster_0, 
        rcount_w4, rcount_w3, r_gcount_w21, rcount_w1, r_gcount_w20, 
        rcount_w0, rptr_5, rcount_5, empty_cmp_clr, wptr_5, wcount_5, 
        full_cmp_set, full_cmp_clr, wptr_0, wptr_2, wptr_1, wptr_4, 
        wptr_3, rptr_0, rptr_2, rptr_1, rptr_4, rptr_3, rden_i, 
        wren_i, iwcount_1, wcount_1, iwcount_2, wcount_2, iwcount_3, 
        wcount_3, iwcount_4, wcount_4, iwcount_5, w_gdata_0, w_gcount_0, 
        w_gdata_1, w_gcount_1, w_gdata_2, w_gcount_2, w_gdata_3, w_gcount_3, 
        w_gdata_4, w_gcount_4, w_gcount_5, wcount_0, rRst, ircount_0, 
        rcount_0, ircount_1, rcount_1, ircount_2, rcount_2, ircount_3, 
        rcount_3, ircount_4, rcount_4, ircount_5, r_gdata_0, r_gcount_0, 
        r_gdata_1, r_gcount_1, r_gdata_2, r_gcount_2, r_gdata_3, r_gcount_3, 
        r_gdata_4, r_gcount_4, r_gcount_5, w_gcount_r0, w_gcount_r1, 
        w_gcount_r2, w_gcount_r3, w_gcount_r4, w_gcount_r5, r_gcount_w0, 
        r_gcount_w1, r_gcount_w2, r_gcount_w3, r_gcount_w4, r_gcount_w5, 
        empty_d, Full, full_d, w_gctr_ci, iwcount_0, co0, co1, 
        r_gctr_ci, co0_1, co1_1, cmp_ci, co0_4, w_g2b_xor_cluster_0, 
        co1_4, empty_cmp_set, empty_d_c, cmp_ci_1, co0_5, co1_5, 
        full_d_c, invout_1, invout_0;
    
    ROM16X1A LUT4_12 (.AD0(GND_net), .AD1(GND_net), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(GND_net), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(wcount_r4), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(wcount_r1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(wcount_r3), .AD1(w_gcount_r22), .AD2(w_gcount_r21), 
            .AD3(w_gcount_r20), .DO0(wcount_r0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(r_gcount_w25), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(GND_net), .AD1(GND_net), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(GND_net), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_6.initval = 16'b0110100110010110;
    ROM16X1A LUT4_5 (.AD0(rcount_w4), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(rcount_w1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_5.initval = 16'b0110100110010110;
    ROM16X1A LUT4_4 (.AD0(rcount_w3), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(rcount_w0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_4.initval = 16'b0110100110010110;
    ROM16X1A LUT4_2 (.AD0(GND_net), .AD1(w_gcount_r25), .AD2(rcount_5), 
            .AD3(rptr_5), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_2.initval = 16'b0001000000000100;
    ROM16X1A LUT4_1 (.AD0(GND_net), .AD1(r_gcount_w25), .AD2(wcount_5), 
            .AD3(wptr_5), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_1.initval = 16'b0000000101000000;
    ROM16X1A LUT4_0 (.AD0(GND_net), .AD1(r_gcount_w25), .AD2(wcount_5), 
            .AD3(wptr_5), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_0.initval = 16'b0100000000000001;
    PDPW8KE pdp_ram_0_0_1 (.DI0(q[0]), .DI1(q[1]), .DI2(q[2]), .DI3(q[3]), 
            .DI4(q[4]), .DI5(q[5]), .DI6(q[6]), .DI7(q[7]), .DI8(q[8]), 
            .DI9(q[9]), .DI10(q[10]), .DI11(q[11]), .DI12(q[12]), .DI13(q[13]), 
            .DI14(q[14]), .DI15(q[15]), .DI16(q[16]), .DI17(q[17]), 
            .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), 
            .ADW4(wptr_4), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), 
            .CLKW(rxhsbyteclk), .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), 
            .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), 
            .ADR4(rptr_0), .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), 
            .ADR8(rptr_4), .ADR9(GND_net), .ADR10(GND_net), .ADR11(GND_net), 
            .ADR12(GND_net), .CER(rden_i), .OCER(rden_i), .CLKR(sys_clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(dphy_raw_fifo_Reset), 
            .DO0(dphy_raw_fifo_Q[9]), .DO1(dphy_raw_fifo_Q[10]), .DO2(dphy_raw_fifo_Q[11]), 
            .DO3(dphy_raw_fifo_Q[12]), .DO4(dphy_raw_fifo_Q[13]), .DO5(dphy_raw_fifo_Q[14]), 
            .DO6(dphy_raw_fifo_Q[15]), .DO7(dphy_raw_fifo_Q[16]), .DO8(dphy_raw_fifo_Q[17]), 
            .DO9(dphy_raw_fifo_Q[0]), .DO10(dphy_raw_fifo_Q[1]), .DO11(dphy_raw_fifo_Q[2]), 
            .DO12(dphy_raw_fifo_Q[3]), .DO13(dphy_raw_fifo_Q[4]), .DO14(dphy_raw_fifo_Q[5]), 
            .DO15(dphy_raw_fifo_Q[6]), .DO16(dphy_raw_fifo_Q[7]), .DO17(dphy_raw_fifo_Q[8])) /* synthesis MEM_LPC_FILE="dphy_raw_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam pdp_ram_0_0_1.DATA_WIDTH_W = 18;
    defparam pdp_ram_0_0_1.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_0_1.REGMODE = "NOREG";
    defparam pdp_ram_0_0_1.CSDECODE_W = "0b001";
    defparam pdp_ram_0_0_1.CSDECODE_R = "0b000";
    defparam pdp_ram_0_0_1.GSR = "ENABLED";
    defparam pdp_ram_0_0_1.RESETMODE = "ASYNC";
    defparam pdp_ram_0_0_1.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_0_1.INIT_DATA = "STATIC";
    defparam pdp_ram_0_0_1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_0_1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3DX FF_72 (.D(iwcount_1), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(320[13] 321[22])
    defparam FF_72.GSR = "DISABLED";
    FD1P3DX FF_71 (.D(iwcount_2), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(324[13] 325[22])
    defparam FF_71.GSR = "DISABLED";
    FD1P3DX FF_70 (.D(iwcount_3), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(328[13] 329[22])
    defparam FF_70.GSR = "DISABLED";
    FD1P3DX FF_69 (.D(iwcount_4), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(332[13] 333[22])
    defparam FF_69.GSR = "DISABLED";
    FD1P3DX FF_68 (.D(iwcount_5), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(336[13] 337[22])
    defparam FF_68.GSR = "DISABLED";
    FD1P3DX FF_67 (.D(w_gdata_0), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(340[13] 341[24])
    defparam FF_67.GSR = "DISABLED";
    FD1P3DX FF_66 (.D(w_gdata_1), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(344[13] 345[24])
    defparam FF_66.GSR = "DISABLED";
    FD1P3DX FF_65 (.D(w_gdata_2), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(348[13] 349[24])
    defparam FF_65.GSR = "DISABLED";
    FD1P3DX FF_64 (.D(w_gdata_3), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(352[13] 353[24])
    defparam FF_64.GSR = "DISABLED";
    FD1P3DX FF_63 (.D(w_gdata_4), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(356[13] 357[24])
    defparam FF_63.GSR = "DISABLED";
    FD1P3DX FF_62 (.D(wcount_5), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(360[13] 361[24])
    defparam FF_62.GSR = "DISABLED";
    FD1P3DX FF_61 (.D(wcount_0), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(364[13] 365[20])
    defparam FF_61.GSR = "DISABLED";
    FD1P3DX FF_60 (.D(wcount_1), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(368[13] 369[20])
    defparam FF_60.GSR = "DISABLED";
    FD1P3DX FF_59 (.D(wcount_2), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(372[13] 373[20])
    defparam FF_59.GSR = "DISABLED";
    FD1P3DX FF_58 (.D(wcount_3), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(376[13] 377[20])
    defparam FF_58.GSR = "DISABLED";
    FD1P3DX FF_57 (.D(wcount_4), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(380[13] 381[20])
    defparam FF_57.GSR = "DISABLED";
    FD1P3DX FF_56 (.D(wcount_5), .SP(wren_i), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(384[13] 385[20])
    defparam FF_56.GSR = "DISABLED";
    FD1P3BX FF_55 (.D(ircount_0), .SP(rden_i), .CK(sys_clk_c), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(388[13] 389[22])
    defparam FF_55.GSR = "DISABLED";
    FD1P3DX FF_54 (.D(ircount_1), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(392[13] 393[22])
    defparam FF_54.GSR = "DISABLED";
    FD1P3DX FF_53 (.D(ircount_2), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(396[13] 397[22])
    defparam FF_53.GSR = "DISABLED";
    FD1P3DX FF_52 (.D(ircount_3), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(400[13] 401[22])
    defparam FF_52.GSR = "DISABLED";
    FD1P3DX FF_51 (.D(ircount_4), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(404[13] 405[22])
    defparam FF_51.GSR = "DISABLED";
    FD1P3DX FF_50 (.D(ircount_5), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(408[13] 409[22])
    defparam FF_50.GSR = "DISABLED";
    FD1P3DX FF_49 (.D(r_gdata_0), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(412[13] 413[24])
    defparam FF_49.GSR = "DISABLED";
    FD1P3DX FF_48 (.D(r_gdata_1), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(416[13] 417[24])
    defparam FF_48.GSR = "DISABLED";
    FD1P3DX FF_47 (.D(r_gdata_2), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(420[13] 421[24])
    defparam FF_47.GSR = "DISABLED";
    FD1P3DX FF_46 (.D(r_gdata_3), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(424[13] 425[24])
    defparam FF_46.GSR = "DISABLED";
    FD1P3DX FF_45 (.D(r_gdata_4), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(428[13] 429[24])
    defparam FF_45.GSR = "DISABLED";
    FD1P3DX FF_44 (.D(rcount_5), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(432[13:87])
    defparam FF_44.GSR = "DISABLED";
    FD1P3DX FF_43 (.D(rcount_0), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(435[13:83])
    defparam FF_43.GSR = "DISABLED";
    FD1P3DX FF_42 (.D(rcount_1), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(438[13:83])
    defparam FF_42.GSR = "DISABLED";
    FD1P3DX FF_41 (.D(rcount_2), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(441[13:83])
    defparam FF_41.GSR = "DISABLED";
    FD1P3DX FF_40 (.D(rcount_3), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(444[13:83])
    defparam FF_40.GSR = "DISABLED";
    FD1P3DX FF_39 (.D(rcount_4), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(447[13:83])
    defparam FF_39.GSR = "DISABLED";
    FD1P3DX FF_38 (.D(rcount_5), .SP(rden_i), .CK(sys_clk_c), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(450[13:83])
    defparam FF_38.GSR = "DISABLED";
    FD1S3DX FF_37 (.D(w_gcount_0), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(453[13:78])
    defparam FF_37.GSR = "DISABLED";
    FD1S3DX FF_36 (.D(w_gcount_1), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(456[13:78])
    defparam FF_36.GSR = "DISABLED";
    FD1S3DX FF_35 (.D(w_gcount_2), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(459[13:78])
    defparam FF_35.GSR = "DISABLED";
    FD1S3DX FF_34 (.D(w_gcount_3), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(462[13:78])
    defparam FF_34.GSR = "DISABLED";
    FD1S3DX FF_33 (.D(w_gcount_4), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(465[13:78])
    defparam FF_33.GSR = "DISABLED";
    FD1S3DX FF_32 (.D(w_gcount_5), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(468[13:78])
    defparam FF_32.GSR = "DISABLED";
    FD1S3DX FF_31 (.D(r_gcount_0), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(471[13:77])
    defparam FF_31.GSR = "DISABLED";
    FD1S3DX FF_30 (.D(r_gcount_1), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(474[13:77])
    defparam FF_30.GSR = "DISABLED";
    FD1S3DX FF_29 (.D(r_gcount_2), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(477[13:77])
    defparam FF_29.GSR = "DISABLED";
    FD1S3DX FF_28 (.D(r_gcount_3), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(480[13:77])
    defparam FF_28.GSR = "DISABLED";
    FD1S3DX FF_27 (.D(r_gcount_4), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(483[13:77])
    defparam FF_27.GSR = "DISABLED";
    FD1S3DX FF_26 (.D(r_gcount_5), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(486[13:77])
    defparam FF_26.GSR = "DISABLED";
    FD1S3DX FF_25 (.D(w_gcount_r0), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(489[13:80])
    defparam FF_25.GSR = "DISABLED";
    FD1S3DX FF_24 (.D(w_gcount_r1), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(492[13:80])
    defparam FF_24.GSR = "DISABLED";
    FD1S3DX FF_23 (.D(w_gcount_r2), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(495[13:80])
    defparam FF_23.GSR = "DISABLED";
    FD1S3DX FF_22 (.D(w_gcount_r3), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(498[13:80])
    defparam FF_22.GSR = "DISABLED";
    FD1S3DX FF_21 (.D(w_gcount_r4), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(501[13:80])
    defparam FF_21.GSR = "DISABLED";
    FD1S3DX FF_20 (.D(w_gcount_r5), .CK(sys_clk_c), .CD(dphy_raw_fifo_Reset), 
            .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(504[13:80])
    defparam FF_20.GSR = "DISABLED";
    FD1S3DX FF_19 (.D(r_gcount_w0), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(507[13:79])
    defparam FF_19.GSR = "DISABLED";
    FD1S3DX FF_18 (.D(r_gcount_w1), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(510[13:79])
    defparam FF_18.GSR = "DISABLED";
    FD1S3DX FF_17 (.D(r_gcount_w2), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(513[13:79])
    defparam FF_17.GSR = "DISABLED";
    FD1S3DX FF_16 (.D(r_gcount_w3), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(516[13:79])
    defparam FF_16.GSR = "DISABLED";
    FD1S3DX FF_15 (.D(r_gcount_w4), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(519[13:79])
    defparam FF_15.GSR = "DISABLED";
    FD1S3DX FF_14 (.D(r_gcount_w5), .CK(rxhsbyteclk), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(522[13:79])
    defparam FF_14.GSR = "DISABLED";
    FD1S3BX FF_1 (.D(empty_d), .CK(sys_clk_c), .PD(rRst), .Q(dphy_raw_fifo_Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(561[13:69])
    defparam FF_1.GSR = "DISABLED";
    FD1S3DX FF_0 (.D(full_d), .CK(rxhsbyteclk), .CD(dphy_raw_fifo_Reset), 
            .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(564[13:68])
    defparam FF_0.GSR = "DISABLED";
    CCU2C w_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(571[11] 573[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(w_gctr_ci), 
          .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(579[11] 581[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0), 
          .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(587[11] 589[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1), 
          .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(595[11] 597[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(VCC_net), .B1(VCC_net), .C1(VCC_net), .D1(VCC_net), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(603[11] 605[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(r_gctr_ci), 
          .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(611[11] 613[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_3), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co0_1), 
          .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(619[11] 621[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_5), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(co1_1), 
          .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(627[11] 629[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(rden_i), .B1(rden_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(715[11] 717[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(VCC_net), .D0(VCC_net), 
          .A1(rcount_1), .B1(wcount_r1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci), .COUT(co0_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(723[11] 725[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(w_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(rcount_3), .B1(wcount_r3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(731[11] 733[65])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(VCC_net), .D0(VCC_net), 
          .A1(empty_cmp_set), .B1(empty_cmp_clr), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_4), .COUT(empty_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(739[11] 741[69])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C a0 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(empty_d_c), 
          .S0(empty_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(747[11] 749[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(wren_i), .B1(wren_i), .C1(VCC_net), .D1(VCC_net), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(755[11] 757[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(VCC_net), .D0(VCC_net), 
          .A1(wcount_1), .B1(rcount_w1), .C1(VCC_net), .D1(VCC_net), 
          .CIN(cmp_ci_1), .COUT(co0_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(763[11] 765[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(r_g2b_xor_cluster_0), .C0(VCC_net), 
          .D0(VCC_net), .A1(wcount_3), .B1(rcount_w3), .C1(VCC_net), 
          .D1(VCC_net), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(771[11] 773[65])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(VCC_net), .D0(VCC_net), 
          .A1(full_cmp_set), .B1(full_cmp_clr), .C1(VCC_net), .D1(VCC_net), 
          .CIN(co1_5), .COUT(full_d_c)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(779[11] 781[68])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    CCU2C a1 (.A0(GND_net), .B0(GND_net), .C0(VCC_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(VCC_net), .D1(VCC_net), .CIN(full_d_c), 
          .S0(full_d)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(791[11] 793[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    INV INV_1 (.A(Full), .Z(invout_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    AND2 AND2_t14 (.A(VCC_net), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(169[10:55])
    AND2 AND2_t13 (.A(dphy_raw_fifo_RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(173[10:55])
    INV INV_0 (.A(dphy_raw_fifo_Empty), .Z(invout_0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    OR2 OR2_t12 (.A(dphy_raw_fifo_Reset), .B(GND_net), .Z(rRst)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(177[9:51])
    XOR2 XOR2_t11 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(179[10:62])
    XOR2 XOR2_t10 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(181[10:62])
    XOR2 XOR2_t9 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(183[10:61])
    XOR2 XOR2_t8 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(185[10:61])
    XOR2 XOR2_t7 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(187[10:61])
    XOR2 XOR2_t6 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(189[10:61])
    XOR2 XOR2_t5 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(191[10:61])
    XOR2 XOR2_t4 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(193[10:61])
    XOR2 XOR2_t3 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(195[10:61])
    XOR2 XOR2_t2 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(197[10:61])
    ROM16X1A LUT4_13 (.AD0(w_gcount_r25), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_3 (.AD0(GND_net), .AD1(w_gcount_r25), .AD2(rcount_5), 
            .AD3(rptr_5), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam LUT4_3.initval = 16'b0000010000010000;
    PDPW8KE pdp_ram_0_1_0 (.DI0(q[18]), .DI1(q[19]), .DI2(q[20]), .DI3(q[21]), 
            .DI4(q[22]), .DI5(q[23]), .DI6(q[24]), .DI7(q[25]), .DI8(q[26]), 
            .DI9(q[27]), .DI10(q[28]), .DI11(q[29]), .DI12(q[30]), .DI13(q[31]), 
            .DI14(GND_net), .DI15(GND_net), .DI16(GND_net), .DI17(GND_net), 
            .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), 
            .ADW4(wptr_4), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(VCC_net), .BE1(VCC_net), .CEW(wren_i), 
            .CLKW(rxhsbyteclk), .CSW0(VCC_net), .CSW1(GND_net), .CSW2(GND_net), 
            .ADR0(GND_net), .ADR1(GND_net), .ADR2(GND_net), .ADR3(GND_net), 
            .ADR4(rptr_0), .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), 
            .ADR8(rptr_4), .ADR9(GND_net), .ADR10(GND_net), .ADR11(GND_net), 
            .ADR12(GND_net), .CER(rden_i), .OCER(rden_i), .CLKR(sys_clk_c), 
            .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), .RST(dphy_raw_fifo_Reset), 
            .DO0(dphy_raw_fifo_Q[27]), .DO1(dphy_raw_fifo_Q[28]), .DO2(dphy_raw_fifo_Q[29]), 
            .DO3(dphy_raw_fifo_Q[30]), .DO4(dphy_raw_fifo_Q[31]), .DO9(dphy_raw_fifo_Q[18]), 
            .DO10(dphy_raw_fifo_Q[19]), .DO11(dphy_raw_fifo_Q[20]), .DO12(dphy_raw_fifo_Q[21]), 
            .DO13(dphy_raw_fifo_Q[22]), .DO14(dphy_raw_fifo_Q[23]), .DO15(dphy_raw_fifo_Q[24]), 
            .DO16(dphy_raw_fifo_Q[25]), .DO17(dphy_raw_fifo_Q[26])) /* synthesis MEM_LPC_FILE="dphy_raw_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(123[15] 137[2])
    defparam pdp_ram_0_1_0.DATA_WIDTH_W = 18;
    defparam pdp_ram_0_1_0.DATA_WIDTH_R = 18;
    defparam pdp_ram_0_1_0.REGMODE = "NOREG";
    defparam pdp_ram_0_1_0.CSDECODE_W = "0b001";
    defparam pdp_ram_0_1_0.CSDECODE_R = "0b000";
    defparam pdp_ram_0_1_0.GSR = "ENABLED";
    defparam pdp_ram_0_1_0.RESETMODE = "ASYNC";
    defparam pdp_ram_0_1_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam pdp_ram_0_1_0.INIT_DATA = "STATIC";
    defparam pdp_ram_0_1_0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam pdp_ram_0_1_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    FD1P3BX FF_73 (.D(iwcount_0), .SP(wren_i), .CK(rxhsbyteclk), .PD(dphy_raw_fifo_Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1, LSE_LINE_FILE_ID=5, LSE_LCOL=15, LSE_RCOL=2, LSE_LLINE=123, LSE_RLINE=137 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(316[13] 317[22])
    defparam FF_73.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module mipi_byte_aligner_U0
//

module mipi_byte_aligner_U0 (sys_clk_c, sys_clk_c_enable_78, n7926, sys_clk_c_enable_112, 
            raw_data_out_lane0, n38, n7855, seq_offect_valid, raw_data_out_valid, 
            \data_out_15__N_208[13] , n7850, \data_out_15__N_208[12] , 
            seq_offect_valid_adj_1, n6157, n8, sync_found, byte_align_valid_lane0, 
            data_out_valid_N_225, sys_clk_c_enable_39, VCC_net, byte_align_data_lane0, 
            n2046, n8_adj_2, n6111, n31, n6105, data_out_valid_N_225_adj_3, 
            n7179, \os_data_15__N_127[0] , n7283, n6704, \data_out_15__N_208[15] ) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input sys_clk_c_enable_78;
    input n7926;
    input sys_clk_c_enable_112;
    input [15:0]raw_data_out_lane0;
    output n38;
    input n7855;
    input seq_offect_valid;
    input raw_data_out_valid;
    output \data_out_15__N_208[13] ;
    input n7850;
    output \data_out_15__N_208[12] ;
    output seq_offect_valid_adj_1;
    output n6157;
    output n8;
    output sync_found;
    output byte_align_valid_lane0;
    input data_out_valid_N_225;
    input sys_clk_c_enable_39;
    input VCC_net;
    output [15:0]byte_align_data_lane0;
    input n2046;
    input n8_adj_2;
    input n6111;
    input n31;
    input n6105;
    output data_out_valid_N_225_adj_3;
    input n7179;
    input \os_data_15__N_127[0] ;
    input n7283;
    output n6704;
    output \data_out_15__N_208[15] ;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    wire [31:0]data_squence;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(41[12:24])
    wire [3:0]seq_offset;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    
    wire n22;
    wire [3:0]n166;
    
    wire n31_c, n31_adj_469, n31_adj_470;
    wire [3:0]n187;
    
    wire n31_adj_471, n31_adj_472;
    wire [2:0]n599;
    
    wire n31_adj_473;
    wire [3:0]found_offect;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(57[11:23])
    
    wire n7894, n7609, n74, n7610, n7890, n7907, n7099, n7117, 
        n7091, n7219, n7706, n73, n7707, n5, n6892, n6888, n31_adj_474;
    wire [1:0]n588;
    
    wire n31_adj_475, n31_adj_476, n31_adj_477, n6886, n6772, n6350, 
        n5868, n77, n7889, n61, n7896, n7687, n7131, n7710;
    wire [31:0]os_data_15__N_127;
    
    wire n7128, n7722, n7146, n7154, n75, n80, n7606, n6870, 
        n21, n7736, n7737, n7878, n7121, n7712, n7741, n7, n5_adj_478, 
        n37, n7827, n7825, n7060, n7874, n19, n7746, n7747, 
        n7808, n79, n7809, n31_adj_479, n7879, n7593, n7469, n7029, 
        n6050, n6780, n6776, n31_adj_480, n7694, n7695, n7880, 
        n6, n36, n7265, n49, n45, n6896, n7650, n7164, n6740, 
        n6983, n6734, n6728, n7735, n6210, n31_adj_482, n6694, 
        n5956, n30, n62, n28, n26, n58, n108, n78, n7732, 
        n7733, n6362, n7875, n7881, n7058, n4813, n5653, n7924, 
        n7923, n6202, n5673, n6_adj_483;
    wire [15:0]data_out_15__N_208;
    
    wire n29, n27, n59, n7932, n7693, n7909, n5847, n7921, n5641, 
        n6474, n7745, n39, n7723, n31_adj_484, n25, n7136, n7826, 
        n7130, n42, n38_adj_485, n6146, n23, n7134, n7721, n6458, 
        n6724, n6690, n40, n6920, n6916, n5632, n9, n7807, n6987, 
        n6906, n6908, n15, n17, n13, n54, n11, n7705, n51, 
        n12, n10, n7709, n7905, n7648, n7649, n50, n46, n7125, 
        n14, n60, n92, n7001, n6636, n6632, n6356, n6254, n24, 
        n7591, n7592, n4, n6334, n8_adj_486, n16, n20, n18, 
        n7075, n6276, n7910, n6618, n7090, n6622, n7895, n7608, 
        n6648, n6656, n6660, n6616, n7686, n7605, n7740, n7742, 
        n6274, n1949, n7931, n6316, n6324, n6300, n7922, n6468, 
        n6710, n5785, n5598, n6_adj_493, n7930, n6328, n7003, 
        n6310, n7023, n6294, n5574, n6612, n7005, n6600, n6598, 
        n6999, n7904, n7031, n6482, n6985;
    
    LUT4 data_squence_31__I_0_92_i22_3_lut (.A(data_squence[21]), .B(data_squence[22]), 
         .C(seq_offset[0]), .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i22_3_lut.init = 16'hcaca;
    LUT4 i2640_4_lut (.A(n166[0]), .B(n31_c), .C(n31_adj_469), .D(n31_adj_470), 
         .Z(n187[0])) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[5:88])
    defparam i2640_4_lut.init = 16'h8c0c;
    LUT4 i2637_4_lut (.A(n31_adj_471), .B(n31_adj_472), .C(n599[0]), .D(n31_adj_473), 
         .Z(n166[0])) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[5:87])
    defparam i2637_4_lut.init = 16'hb3bb;
    FD1P3IX seq_offset__i0 (.D(found_offect[0]), .SP(sys_clk_c_enable_78), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i0.GSR = "ENABLED";
    LUT4 n74_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7609), 
         .D(n74), .Z(n7610)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n74_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_166_3_lut_4_lut (.A(seq_offset[0]), .B(seq_offset[1]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7890)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i1_2_lut_rep_166_3_lut_4_lut.init = 16'h0f1e;
    LUT4 data_squence_31__I_0_92_i76_rep_33_3_lut_4_lut (.A(seq_offset[2]), 
         .B(n7907), .C(n7099), .D(n7117), .Z(n7091)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i76_rep_33_3_lut_4_lut.init = 16'hf960;
    LUT4 i6975_2_lut_3_lut_2_lut_3_lut_4_lut (.A(seq_offset[0]), .B(seq_offset[1]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7219)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i6975_2_lut_3_lut_2_lut_3_lut_4_lut.init = 16'h0f1f;
    LUT4 n73_bdd_3_lut_7073_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7706), 
         .D(n73), .Z(n7707)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n73_bdd_3_lut_7073_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut (.A(n5), .B(n6892), .C(n6888), .D(data_squence[5]), 
         .Z(n31_adj_474)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hfeff;
    LUT4 i2635_4_lut (.A(n588[0]), .B(n31_adj_475), .C(n31_adj_476), .D(n31_adj_477), 
         .Z(n599[0])) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(69[5:87])
    defparam i2635_4_lut.init = 16'h8c0c;
    LUT4 i1_4_lut_adj_29 (.A(n6886), .B(data_squence[1]), .C(data_squence[15]), 
         .D(data_squence[10]), .Z(n6892)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_29.init = 16'hfffb;
    LUT4 i1_4_lut_adj_30 (.A(data_squence[4]), .B(n6772), .C(data_squence[14]), 
         .D(data_squence[8]), .Z(n6888)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_30.init = 16'hfffd;
    LUT4 i1_2_lut (.A(n6350), .B(n5868), .Z(n31_adj_473)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 n77_bdd_4_lut_7197 (.A(n77), .B(n7889), .C(n61), .D(n7896), 
         .Z(n7687)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam n77_bdd_4_lut_7197.init = 16'h22e2;
    LUT4 i6735_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7131), .D(n7710), 
         .Z(os_data_15__N_127[7])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i6735_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_172_3_lut (.A(seq_offset[0]), .B(seq_offset[1]), .C(seq_offset[2]), 
         .Z(n7896)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i1_2_lut_rep_172_3_lut.init = 16'h1e1e;
    LUT4 i6780_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7128), .D(n7722), 
         .Z(os_data_15__N_127[6])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i6780_3_lut_4_lut.init = 16'hfe10;
    LUT4 data_squence_31__I_0_92_i75_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n7146), .D(n7154), .Z(n75)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i75_3_lut_4_lut.init = 16'hf960;
    LUT4 os_data_15__N_198_3__bdd_4_lut_7004_4_lut (.A(seq_offset[3]), .B(n7894), 
         .C(data_squence[31]), .D(n80), .Z(n7606)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut_7004_4_lut.init = 16'hfe10;
    LUT4 i1_4_lut_adj_31 (.A(data_squence[3]), .B(data_squence[9]), .C(n6870), 
         .D(data_squence[7]), .Z(n6886)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_31.init = 16'hfffd;
    LUT4 n7736_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n21), 
         .D(n7736), .Z(n7737)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n7736_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_154 (.A(n31_adj_472), .B(n31_adj_471), .Z(n7878)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[5:87])
    defparam i1_2_lut_rep_154.init = 16'h8888;
    LUT4 i1_2_lut_adj_32 (.A(data_squence[6]), .B(data_squence[2]), .Z(n6870)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_32.init = 16'heeee;
    LUT4 os_data_15__N_198_4__bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), 
         .C(n7121), .D(n7712), .Z(n7741)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam os_data_15__N_198_4__bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 data_squence_31__I_0_92_i37_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n7), .D(n5_adj_478), .Z(n37)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i37_3_lut_4_lut.init = 16'hf960;
    PFUMX i7117 (.BLUT(n7827), .ALUT(n7825), .C0(n7889), .Z(os_data_15__N_127[13]));
    FD1P3IX data_squence__i0 (.D(raw_data_out_lane0[15]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_150_3_lut (.A(n31_adj_472), .B(n31_adj_471), .C(n7060), 
         .Z(n7874)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[5:87])
    defparam i1_2_lut_rep_150_3_lut.init = 16'h8080;
    LUT4 n7746_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n19), 
         .D(n7746), .Z(n7747)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n7746_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 n79_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7808), 
         .D(n79), .Z(n7809)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n79_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_155 (.A(n31_c), .B(n31_adj_479), .Z(n7879)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_155.init = 16'h8888;
    LUT4 n307_bdd_2_lut_4_lut (.A(n38), .B(n7855), .C(seq_offect_valid), 
         .D(raw_data_out_valid), .Z(\data_out_15__N_208[13] )) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n307_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 n7468_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n74), 
         .D(n7593), .Z(n7469)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7468_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n307_bdd_2_lut_7134_4_lut (.A(n38), .B(n7850), .C(seq_offect_valid), 
         .D(raw_data_out_valid), .Z(\data_out_15__N_208[12] )) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n307_bdd_2_lut_7134_4_lut.init = 16'hca00;
    LUT4 i1_4_lut_adj_33 (.A(n7029), .B(n6050), .C(n6780), .D(n6776), 
         .Z(n31_adj_480)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_33.init = 16'hfffd;
    LUT4 n75_bdd_3_lut_7067_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7694), 
         .D(n75), .Z(n7695)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n75_bdd_3_lut_7067_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_156 (.A(n31_adj_480), .B(n31_adj_474), .Z(n7880)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_156.init = 16'h8888;
    LUT4 i6684_2_lut (.A(data_squence[5]), .B(data_squence[4]), .Z(n7029)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6684_2_lut.init = 16'h8888;
    LUT4 i1_3_lut (.A(data_squence[2]), .B(data_squence[6]), .C(data_squence[7]), 
         .Z(n6050)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_3_lut.init = 16'hf7f7;
    FD1P3IX data_squence__i31 (.D(data_squence[15]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[31])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i31.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i36_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n6), .D(data_squence[4]), .Z(n36)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i36_3_lut_4_lut.init = 16'hf960;
    LUT4 i6968_2_lut_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), .C(seq_offect_valid_adj_1), 
         .D(seq_offset[3]), .Z(n7265)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam i6968_2_lut_3_lut_4_lut.init = 16'h0f1f;
    FD1P3IX data_squence__i30 (.D(data_squence[14]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[30])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i30.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i77_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n49), .D(n45), .Z(n77)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i77_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_34 (.A(n5), .B(data_squence[17]), .C(n6896), .D(data_squence[8]), 
         .Z(n6780)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_34.init = 16'hfffe;
    LUT4 i1_2_lut_adj_35 (.A(data_squence[9]), .B(data_squence[3]), .Z(n6896)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam i1_2_lut_adj_35.init = 16'heeee;
    LUT4 i6742_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n73), .D(n7650), 
         .Z(n7164)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam i6742_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_adj_36 (.A(n5), .B(n6740), .C(n6983), .D(data_squence[7]), 
         .Z(n31_adj_479)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_36.init = 16'hefff;
    LUT4 i1_4_lut_adj_37 (.A(n6734), .B(n6728), .C(data_squence[17]), 
         .D(data_squence[16]), .Z(n6740)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_37.init = 16'hfffe;
    LUT4 i6639_2_lut (.A(data_squence[5]), .B(data_squence[6]), .Z(n6983)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6639_2_lut.init = 16'h8888;
    LUT4 n7735_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n77), 
         .D(n7735), .Z(n7736)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7735_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i2632_4_lut (.A(n6210), .B(n31_adj_482), .C(n6694), .D(n5956), 
         .Z(n588[0])) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (B))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[5:87])
    defparam i2632_4_lut.init = 16'h3b33;
    LUT4 i1_4_lut_adj_38 (.A(data_squence[18]), .B(data_squence[8]), .C(data_squence[9]), 
         .D(data_squence[4]), .Z(n6728)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_38.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i62_4_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(data_squence[31]), .D(n30), .Z(n62)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(D))) */ ;
    defparam data_squence_31__I_0_92_i62_4_lut_4_lut.init = 16'hb920;
    LUT4 data_squence_31__I_0_92_i58_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n28), .D(n26), .Z(n58)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i58_3_lut_4_lut.init = 16'hf960;
    PFUMX data_squence_31__I_0_92_i140 (.BLUT(n7091), .ALUT(n108), .C0(n7219), 
          .Z(os_data_15__N_127[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;
    LUT4 data_squence_31__I_0_92_i80_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n7121), .D(n7099), .Z(n80)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i80_3_lut_4_lut.init = 16'hf960;
    LUT4 n7732_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n78), 
         .D(n7732), .Z(n7733)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7732_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_adj_39 (.A(n6362), .B(n5868), .Z(n31_adj_475)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_2_lut_adj_39.init = 16'heeee;
    LUT4 i1_4_lut_adj_40 (.A(n7875), .B(n7881), .C(n7874), .D(n7058), 
         .Z(found_offect[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_4_lut_adj_40.init = 16'h75f5;
    LUT4 i1_4_lut_adj_41 (.A(n7880), .B(n7060), .C(n7879), .D(n4813), 
         .Z(found_offect[1])) /* synthesis lut_function=((B (C (D))+!B (C))+!A) */ ;
    defparam i1_4_lut_adj_41.init = 16'hf575;
    LUT4 i1_4_lut_adj_42 (.A(n5653), .B(n7924), .C(n7923), .D(n6202), 
         .Z(n6210)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_42.init = 16'h0100;
    LUT4 i1_4_lut_adj_43 (.A(n7058), .B(n7878), .C(n5673), .D(n7881), 
         .Z(n4813)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(72[5:87])
    defparam i1_4_lut_adj_43.init = 16'h4c44;
    LUT4 i5353_2_lut (.A(n5956), .B(n31_adj_482), .Z(n5673)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5353_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_44 (.A(raw_data_out_valid), .B(n6_adj_483), .Z(data_out_15__N_208[15])) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_44.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i59_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n29), .D(n27), .Z(n59)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i59_3_lut_4_lut.init = 16'hf960;
    LUT4 n7692_bdd_2_lut_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), .C(n7932), 
         .D(seq_offset[3]), .Z(n7693)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;
    defparam n7692_bdd_2_lut_3_lut_4_lut.init = 16'he010;
    LUT4 i1_2_lut_4_lut (.A(n7909), .B(n5847), .C(n7921), .D(n5641), 
         .Z(n6474)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 n7745_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n75), 
         .D(n7745), .Z(n7746)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n7745_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n75_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), .C(n39), .D(n7723), 
         .Z(n7745)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n75_bdd_3_lut_4_lut.init = 16'hf960;
    FD1P3IX data_squence__i29 (.D(data_squence[13]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[29])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i29.GSR = "ENABLED";
    FD1P3IX data_squence__i28 (.D(data_squence[12]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[28])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i28.GSR = "ENABLED";
    LUT4 n78_bdd_3_lut_7115_4_lut (.A(seq_offset[3]), .B(n7894), .C(n62), 
         .D(n7896), .Z(n7825)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;
    defparam n78_bdd_3_lut_7115_4_lut.init = 16'h0090;
    LUT4 data_squence_31__I_0_92_i61_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n31_adj_484), .D(n29), .Z(n61)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i61_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i57_rep_78_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n27), .D(n25), .Z(n7136)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i57_rep_78_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_adj_45 (.A(data_squence[13]), .B(data_squence[16]), .Z(n6772)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_2_lut_adj_45.init = 16'heeee;
    LUT4 n78_bdd_3_lut_4_lut (.A(seq_offset[3]), .B(n7894), .C(n7826), 
         .D(n78), .Z(n7827)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n78_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n77_bdd_3_lut_7070_4_lut (.A(seq_offset[2]), .B(n7907), .C(n7130), 
         .D(n37), .Z(n7735)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n77_bdd_3_lut_7070_4_lut.init = 16'hf960;
    LUT4 n78_bdd_3_lut_7114_4_lut (.A(seq_offset[2]), .B(n7907), .C(n42), 
         .D(n38_adj_485), .Z(n7732)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n78_bdd_3_lut_7114_4_lut.init = 16'hf960;
    FD1P3IX data_squence__i27 (.D(data_squence[11]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[27])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i27.GSR = "ENABLED";
    LUT4 i6971_4_lut (.A(n6157), .B(n5956), .C(n8), .D(n6146), .Z(sync_found)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i6971_4_lut.init = 16'h7fff;
    FD1P3IX data_squence__i26 (.D(data_squence[10]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[26])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i26.GSR = "ENABLED";
    FD1P3IX data_squence__i25 (.D(data_squence[9]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[25])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i25.GSR = "ENABLED";
    FD1P3IX data_squence__i24 (.D(data_squence[8]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[24])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i24.GSR = "ENABLED";
    FD1P3IX data_squence__i23 (.D(data_squence[7]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[23])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i23.GSR = "ENABLED";
    FD1P3IX data_squence__i22 (.D(data_squence[6]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[22])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i22.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i53_rep_75_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n23), .D(n21), .Z(n7134)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i53_rep_75_3_lut_4_lut.init = 16'hf960;
    FD1P3IX data_squence__i21 (.D(data_squence[5]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[21])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i21.GSR = "ENABLED";
    LUT4 n7154_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), .C(n39), 
         .D(n7154), .Z(n7721)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n7154_bdd_3_lut_4_lut.init = 16'hf690;
    LUT4 i1_4_lut_adj_46 (.A(n7058), .B(n7874), .C(n6458), .D(n7879), 
         .Z(n6157)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h8000;
    FD1P3IX data_squence__i20 (.D(data_squence[4]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[20])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i20.GSR = "ENABLED";
    FD1P3IX data_squence__i19 (.D(data_squence[3]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[19])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i19.GSR = "ENABLED";
    FD1P3IX data_squence__i18 (.D(data_squence[2]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[18])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i18.GSR = "ENABLED";
    FD1P3IX data_squence__i17 (.D(data_squence[1]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[17])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i17.GSR = "ENABLED";
    FD1P3IX data_squence__i16 (.D(data_squence[0]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[16])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i16.GSR = "ENABLED";
    FD1P3IX data_squence__i15 (.D(raw_data_out_lane0[0]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i15.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(data_squence[10]), .B(data_squence[14]), .C(data_squence[3]), 
         .D(n6724), .Z(n6734)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_3_lut_4_lut.init = 16'hffef;
    FD1P3IX data_squence__i14 (.D(raw_data_out_lane0[1]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i14.GSR = "ENABLED";
    LUT4 i2_4_lut (.A(n6694), .B(n31_adj_482), .C(n5653), .D(n6690), 
         .Z(n8)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hccc8;
    LUT4 os_data_15__N_198_4__bdd_3_lut_7062_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n40), .D(n36), .Z(n7712)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam os_data_15__N_198_4__bdd_3_lut_7062_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i7_3_lut (.A(data_squence[6]), .B(data_squence[7]), 
         .C(seq_offset[0]), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i7_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_47 (.A(data_squence[16]), .B(n6920), .C(n6916), 
         .D(n5632), .Z(n6146)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_47.init = 16'hfffd;
    FD1P3IX data_squence__i13 (.D(raw_data_out_lane0[2]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i13.GSR = "ENABLED";
    LUT4 i2591_3_lut (.A(data_squence[8]), .B(data_squence[9]), .C(seq_offset[0]), 
         .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    defparam i2591_3_lut.init = 16'hcaca;
    FD1P3IX data_squence__i12 (.D(raw_data_out_lane0[3]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i12.GSR = "ENABLED";
    FD1P3IX data_squence__i11 (.D(raw_data_out_lane0[4]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i11.GSR = "ENABLED";
    PFUMX i7103 (.BLUT(n7809), .ALUT(n7807), .C0(n7890), .Z(os_data_15__N_127[14]));
    FD1P3IX data_squence__i10 (.D(raw_data_out_lane0[5]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i10.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i19_3_lut (.A(data_squence[18]), .B(data_squence[19]), 
         .C(seq_offset[0]), .Z(n19)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i19_3_lut.init = 16'hcaca;
    FD1P3IX data_squence__i9 (.D(raw_data_out_lane0[6]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i9.GSR = "ENABLED";
    FD1P3IX data_squence__i8 (.D(raw_data_out_lane0[7]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i8.GSR = "ENABLED";
    FD1P3IX data_squence__i7 (.D(raw_data_out_lane0[8]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i7.GSR = "ENABLED";
    FD1P3IX data_squence__i6 (.D(raw_data_out_lane0[9]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i6.GSR = "ENABLED";
    FD1P3IX data_squence__i5 (.D(raw_data_out_lane0[10]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i5.GSR = "ENABLED";
    FD1P3IX data_squence__i4 (.D(raw_data_out_lane0[11]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i4.GSR = "ENABLED";
    FD1P3IX data_squence__i3 (.D(raw_data_out_lane0[12]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i3.GSR = "ENABLED";
    FD1P3IX data_squence__i2 (.D(raw_data_out_lane0[13]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_48 (.A(n6987), .B(n6906), .C(n6908), .D(n7924), 
         .Z(n6920)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_48.init = 16'hfffd;
    LUT4 data_squence_31__I_0_92_i21_3_lut (.A(data_squence[20]), .B(data_squence[21]), 
         .C(seq_offset[0]), .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i21_3_lut.init = 16'hcaca;
    FD1P3IX data_squence__i1 (.D(raw_data_out_lane0[14]), .SP(sys_clk_c_enable_112), 
            .CD(n7926), .CK(sys_clk_c), .Q(data_squence[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam data_squence__i1.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i15_3_lut (.A(data_squence[14]), .B(data_squence[15]), 
         .C(seq_offset[0]), .Z(n15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i15_3_lut.init = 16'hcaca;
    LUT4 i6643_2_lut (.A(data_squence[18]), .B(data_squence[19]), .Z(n6987)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6643_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_49 (.A(data_squence[17]), .B(data_squence[25]), .Z(n6906)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_adj_49.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i17_3_lut (.A(data_squence[16]), .B(data_squence[17]), 
         .C(seq_offset[0]), .Z(n17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i17_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_50 (.A(data_squence[28]), .B(data_squence[30]), .C(data_squence[31]), 
         .D(data_squence[29]), .Z(n6908)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_50.init = 16'hfffe;
    LUT4 i6711_3_lut (.A(n5868), .B(n6362), .C(n6350), .Z(n7058)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i6711_3_lut.init = 16'heaea;
    LUT4 i1_2_lut_adj_51 (.A(data_squence[22]), .B(data_squence[17]), .Z(n6202)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_51.init = 16'h4444;
    LUT4 data_squence_31__I_0_92_i45_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n15), .D(n13), .Z(n45)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i45_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_adj_52 (.A(data_squence[30]), .B(data_squence[19]), .Z(n5653)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_2_lut_adj_52.init = 16'hbbbb;
    LUT4 n78_bdd_3_lut_7116_4_lut (.A(seq_offset[2]), .B(n7907), .C(n54), 
         .D(n58), .Z(n7826)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n78_bdd_3_lut_7116_4_lut.init = 16'hf690;
    LUT4 data_squence_31__I_0_92_i23_3_lut (.A(data_squence[22]), .B(data_squence[23]), 
         .C(seq_offset[0]), .Z(n23)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i23_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i25_3_lut (.A(data_squence[24]), .B(data_squence[25]), 
         .C(seq_offset[0]), .Z(n25)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i25_3_lut.init = 16'hcaca;
    LUT4 i2581_3_lut (.A(data_squence[10]), .B(data_squence[11]), .C(seq_offset[0]), 
         .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    defparam i2581_3_lut.init = 16'hcaca;
    LUT4 n73_bdd_4_lut_7217 (.A(n7889), .B(n7134), .C(n49), .D(n7896), 
         .Z(n7705)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n73_bdd_4_lut_7217.init = 16'h4450;
    LUT4 data_squence_31__I_0_92_i41_rep_72_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n11), .D(n9), .Z(n7130)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i41_rep_72_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i13_3_lut (.A(data_squence[12]), .B(data_squence[13]), 
         .C(seq_offset[0]), .Z(n13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i13_3_lut.init = 16'hcaca;
    LUT4 i70_2_lut (.A(data_squence[11]), .B(data_squence[10]), .Z(n51)) /* synthesis lut_function=(A (B)) */ ;
    defparam i70_2_lut.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i42_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n12), .D(n10), .Z(n42)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i42_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_adj_53 (.A(data_squence[9]), .B(data_squence[8]), .Z(n5641)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam i1_2_lut_adj_53.init = 16'hbbbb;
    LUT4 n7117_bdd_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), .C(n40), 
         .D(n7117), .Z(n7709)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n7117_bdd_3_lut_4_lut.init = 16'hf690;
    LUT4 i1_2_lut_rep_181 (.A(data_squence[25]), .B(data_squence[28]), .Z(n7905)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_rep_181.init = 16'heeee;
    LUT4 data_squence_1__bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n7648), .D(data_squence[1]), .Z(n7649)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_1__bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 n73_bdd_3_lut_7045_4_lut (.A(seq_offset[2]), .B(n7907), .C(n7136), 
         .D(n61), .Z(n7706)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n73_bdd_3_lut_7045_4_lut.init = 16'hf690;
    LUT4 data_squence_31__I_0_92_i78_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n50), .D(n46), .Z(n78)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i78_3_lut_4_lut.init = 16'hf960;
    LUT4 n75_bdd_3_lut_7040_4_lut (.A(seq_offset[2]), .B(n7907), .C(n7128), 
         .D(n7125), .Z(n7694)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n75_bdd_3_lut_7040_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i44_rep_59_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n14), .D(n12), .Z(n7117)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i44_rep_59_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i49_rep_47_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n19), .D(n17), .Z(n49)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i49_rep_47_3_lut_4_lut.init = 16'hf960;
    FD1S3IX data_out_valid_86 (.D(data_out_valid_N_225), .CK(sys_clk_c), 
            .CD(n7926), .Q(byte_align_valid_lane0)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out_valid_86.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i92_4_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(data_squence[31]), .D(n60), .Z(n92)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(D))) */ ;
    defparam data_squence_31__I_0_92_i92_4_lut_4_lut.init = 16'hb920;
    LUT4 i1_4_lut_adj_54 (.A(n7001), .B(n5641), .C(n6636), .D(n6632), 
         .Z(n31_c)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_54.init = 16'hfffd;
    LUT4 i1_4_lut_adj_55 (.A(data_squence[13]), .B(data_squence[10]), .C(data_squence[14]), 
         .D(n6356), .Z(n6362)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(64[9:41])
    defparam i1_4_lut_adj_55.init = 16'hff7f;
    LUT4 data_squence_31__I_0_92_i27_3_lut (.A(data_squence[26]), .B(data_squence[27]), 
         .C(seq_offset[0]), .Z(n27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i27_3_lut.init = 16'hcaca;
    FD1P3IX seq_offect_valid_84 (.D(VCC_net), .SP(sys_clk_c_enable_39), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offect_valid_adj_1)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offect_valid_84.GSR = "ENABLED";
    LUT4 data_squence_31__I_0_92_i29_3_lut (.A(data_squence[28]), .B(data_squence[29]), 
         .C(seq_offset[0]), .Z(n29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i29_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i31_3_lut (.A(data_squence[30]), .B(data_squence[31]), 
         .C(seq_offset[0]), .Z(n31_adj_484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i31_3_lut.init = 16'hcaca;
    LUT4 n74_bdd_3_lut_7005_4_lut (.A(seq_offset[2]), .B(n7907), .C(n62), 
         .D(n58), .Z(n7609)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n74_bdd_3_lut_7005_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i55_rep_70_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n25), .D(n23), .Z(n7128)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i55_rep_70_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_3_lut (.A(data_squence[25]), .B(data_squence[28]), .C(data_squence[16]), 
         .Z(n6254)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(68[9:41])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i6717_2_lut_rep_151_3_lut_4_lut (.A(n31_adj_480), .B(n31_adj_474), 
         .C(n31_adj_479), .D(n31_c), .Z(n7875)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6717_2_lut_rep_151_3_lut_4_lut.init = 16'h8000;
    LUT4 data_squence_31__I_0_92_i56_rep_73_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n26), .D(n24), .Z(n7131)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i56_rep_73_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i74_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n46), .D(n42), .Z(n74)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i74_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i73_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n45), .D(n7130), .Z(n73)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i73_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i60_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n30), .D(n28), .Z(n60)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i60_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_2__bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n7591), .D(data_squence[2]), .Z(n7592)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_2__bdd_3_lut_4_lut.init = 16'hf960;
    PFUMX i7014 (.BLUT(n7649), .ALUT(n37), .C0(n7896), .Z(n7650));
    LUT4 i1_4_lut_adj_56 (.A(n7921), .B(n4), .C(n5632), .D(n6334), .Z(n5868)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_4_lut_adj_56.init = 16'hfffe;
    LUT4 i1_2_lut_rep_157 (.A(n31_adj_477), .B(n31_adj_476), .Z(n7881)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_157.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i40_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n10), .D(n8_adj_486), .Z(n40)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i40_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i46_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n16), .D(n14), .Z(n46)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i46_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i51_rep_67_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n21), .D(n19), .Z(n7125)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i51_rep_67_3_lut_4_lut.init = 16'hf960;
    LUT4 n39_bdd_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), .C(data_squence[3]), 
         .D(n5_adj_478), .Z(n7723)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n39_bdd_3_lut_4_lut.init = 16'hf690;
    LUT4 i1_2_lut_adj_57 (.A(data_squence[12]), .B(data_squence[20]), .Z(n4)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(70[9:40])
    defparam i1_2_lut_adj_57.init = 16'hdddd;
    LUT4 i1_2_lut_adj_58 (.A(data_squence[21]), .B(data_squence[22]), .Z(n5632)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_2_lut_adj_58.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i54_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n24), .D(n22), .Z(n54)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i54_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i50_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n20), .D(n18), .Z(n50)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i50_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i43_rep_96_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n13), .D(n11), .Z(n7154)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i43_rep_96_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n31_adj_477), .B(n31_adj_476), .C(n31_adj_474), 
         .D(n31_adj_480), .Z(n6458)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i6656_2_lut (.A(data_squence[7]), .B(data_squence[6]), .Z(n7001)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6656_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_59 (.A(n7075), .B(n7924), .C(n6276), .D(n7910), 
         .Z(n31_adj_482)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_4_lut_adj_59.init = 16'hfffd;
    LUT4 i1_4_lut_adj_60 (.A(n6618), .B(n5), .C(n6724), .D(data_squence[17]), 
         .Z(n6636)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i38_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n8_adj_486), .D(n6), .Z(n38_adj_485)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i38_3_lut_4_lut.init = 16'hf960;
    LUT4 i2002_3_lut_4_lut (.A(n7889), .B(n7896), .C(n7090), .D(n7121), 
         .Z(n108)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i2002_3_lut_4_lut.init = 16'hf1e0;
    LUT4 data_squence_31__I_0_92_i39_3_lut_4_lut (.A(seq_offset[1]), .B(seq_offset[0]), 
         .C(n9), .D(n7), .Z(n39)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i39_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i48_rep_41_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n18), .D(n16), .Z(n7099)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i48_rep_41_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i52_rep_63_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n22), .D(n20), .Z(n7121)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i52_rep_63_3_lut_4_lut.init = 16'hf960;
    LUT4 data_squence_31__I_0_92_i47_rep_88_3_lut_4_lut (.A(seq_offset[1]), 
         .B(seq_offset[0]), .C(n17), .D(n15), .Z(n7146)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i47_rep_88_3_lut_4_lut.init = 16'hf960;
    LUT4 i2643_4_lut (.A(n187[0]), .B(n31_adj_474), .C(n31_adj_480), .D(n31_adj_479), 
         .Z(found_offect[0])) /* synthesis lut_function=(A ((C)+!B)+!A !(B ((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(78[5:88])
    defparam i2643_4_lut.init = 16'hb3f3;
    LUT4 i1_2_lut_rep_185 (.A(data_squence[17]), .B(data_squence[13]), .Z(n7909)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_2_lut_rep_185.init = 16'heeee;
    LUT4 i1_4_lut_adj_61 (.A(data_squence[4]), .B(n6622), .C(data_squence[14]), 
         .D(data_squence[19]), .Z(n6632)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_61.init = 16'hfffd;
    LUT4 i1065_2_lut_rep_183 (.A(seq_offset[0]), .B(seq_offset[1]), .Z(n7907)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i1065_2_lut_rep_183.init = 16'heeee;
    LUT4 i1_2_lut_adj_62 (.A(data_squence[18]), .B(data_squence[5]), .Z(n6618)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_62.init = 16'heeee;
    LUT4 i1_3_lut_rep_171_4_lut (.A(data_squence[17]), .B(data_squence[13]), 
         .C(n7921), .D(n5847), .Z(n7895)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_3_lut_rep_171_4_lut.init = 16'hfffe;
    PFUMX i7006 (.BLUT(n7610), .ALUT(n7608), .C0(n7890), .Z(os_data_15__N_127[9]));
    LUT4 i1_3_lut_4_lut_adj_63 (.A(data_squence[17]), .B(data_squence[13]), 
         .C(n5847), .D(n6648), .Z(n6656)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_3_lut_4_lut_adj_63.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i5_3_lut (.A(data_squence[4]), .B(data_squence[5]), 
         .C(seq_offset[0]), .Z(n5_adj_478)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_64 (.A(data_squence[11]), .B(data_squence[9]), 
         .C(n6660), .Z(n31_adj_469)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_64.init = 16'hfbfb;
    LUT4 i6712_3_lut_4_lut (.A(data_squence[11]), .B(data_squence[9]), .C(n6660), 
         .D(n6616), .Z(n7060)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i6712_3_lut_4_lut.init = 16'hfbbb;
    LUT4 i1_2_lut_adj_65 (.A(data_squence[16]), .B(data_squence[10]), .Z(n6622)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_65.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_66 (.A(data_squence[11]), .B(data_squence[9]), 
         .C(n6616), .Z(n31_adj_470)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_2_lut_3_lut_adj_66.init = 16'hfbfb;
    LUT4 i1_2_lut_adj_67 (.A(data_squence[11]), .B(data_squence[12]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(76[9:40])
    defparam i1_2_lut_adj_67.init = 16'heeee;
    LUT4 i1_2_lut_rep_186 (.A(data_squence[26]), .B(data_squence[27]), .Z(n7910)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_rep_186.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i79_3_lut_4_lut (.A(seq_offset[2]), .B(n7907), 
         .C(n7125), .D(n7146), .Z(n79)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam data_squence_31__I_0_92_i79_3_lut_4_lut.init = 16'hf960;
    LUT4 i2830_2_lut_rep_170_3_lut (.A(seq_offset[0]), .B(seq_offset[1]), 
         .C(seq_offset[2]), .Z(n7894)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i2830_2_lut_rep_170_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_68 (.A(data_squence[15]), .B(data_squence[13]), .Z(n6724)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_2_lut_adj_68.init = 16'heeee;
    FD1P3IX seq_offset__i3 (.D(found_offect[3]), .SP(sys_clk_c_enable_78), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_69 (.A(data_squence[26]), .B(data_squence[27]), 
         .C(data_squence[20]), .Z(n6916)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_3_lut_adj_69.init = 16'hefef;
    LUT4 n77_bdd_4_lut_7036 (.A(n7889), .B(n7136), .C(n7134), .D(n7896), 
         .Z(n7686)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam n77_bdd_4_lut_7036.init = 16'h4450;
    FD1P3IX seq_offset__i2 (.D(found_offect[2]), .SP(sys_clk_c_enable_78), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i2.GSR = "ENABLED";
    FD1P3IX seq_offset__i1 (.D(found_offect[1]), .SP(sys_clk_c_enable_78), 
            .CD(n7926), .CK(sys_clk_c), .Q(seq_offset[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam seq_offset__i1.GSR = "ENABLED";
    LUT4 i6938_2_lut_rep_165_3_lut_4_lut (.A(seq_offset[0]), .B(seq_offset[1]), 
         .C(seq_offset[3]), .D(seq_offset[2]), .Z(n7889)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam i6938_2_lut_rep_165_3_lut_4_lut.init = 16'h0001;
    FD1S3IX data_out__i15 (.D(data_out_15__N_208[15]), .CK(sys_clk_c), .CD(n7926), 
            .Q(byte_align_data_lane0[15])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i15.GSR = "ENABLED";
    LUT4 i6727_4_lut (.A(data_squence[17]), .B(data_squence[16]), .C(data_squence[15]), 
         .D(data_squence[13]), .Z(n7075)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6727_4_lut.init = 16'h8000;
    FD1S3IX data_out__i14 (.D(os_data_15__N_127[1]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[14])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i14.GSR = "ENABLED";
    FD1S3IX data_out__i13 (.D(data_out_15__N_208[13]), .CK(sys_clk_c), .CD(n7926), 
            .Q(byte_align_data_lane0[13])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i13.GSR = "ENABLED";
    FD1S3IX data_out__i12 (.D(data_out_15__N_208[12]), .CK(sys_clk_c), .CD(n7926), 
            .Q(byte_align_data_lane0[12])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i12.GSR = "ENABLED";
    FD1S3IX data_out__i11 (.D(data_out_15__N_208[11]), .CK(sys_clk_c), .CD(n7926), 
            .Q(byte_align_data_lane0[11])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i11.GSR = "ENABLED";
    FD1S3IX data_out__i10 (.D(os_data_15__N_127[5]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[10])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i10.GSR = "ENABLED";
    FD1S3IX data_out__i9 (.D(os_data_15__N_127[6]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[9])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i9.GSR = "ENABLED";
    FD1S3IX data_out__i8 (.D(os_data_15__N_127[7]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[8])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i8.GSR = "ENABLED";
    FD1S3IX data_out__i7 (.D(os_data_15__N_127[8]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i7.GSR = "ENABLED";
    FD1S3IX data_out__i6 (.D(os_data_15__N_127[9]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[6])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i6.GSR = "ENABLED";
    FD1S3IX data_out__i5 (.D(os_data_15__N_127[10]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[5])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i5.GSR = "ENABLED";
    FD1S3IX data_out__i4 (.D(os_data_15__N_127[11]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[4])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i4.GSR = "ENABLED";
    FD1S3IX data_out__i3 (.D(os_data_15__N_127[12]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[3])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i3.GSR = "ENABLED";
    FD1S3IX data_out__i2 (.D(os_data_15__N_127[13]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[2])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i2.GSR = "ENABLED";
    FD1S3IX data_out__i1 (.D(os_data_15__N_127[14]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i1.GSR = "ENABLED";
    LUT4 i6947_4_lut (.A(n8_adj_2), .B(n6111), .C(n31), .D(n6105), .Z(n38)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i6947_4_lut.init = 16'h7fff;
    PFUMX i7002 (.BLUT(n7606), .ALUT(n7605), .C0(n7890), .Z(os_data_15__N_127[15]));
    PFUMX i7063 (.BLUT(n7741), .ALUT(n7740), .C0(n7890), .Z(n7742));
    LUT4 n307_bdd_2_lut_7075_4_lut (.A(sync_found), .B(n7747), .C(seq_offect_valid_adj_1), 
         .D(raw_data_out_valid), .Z(data_out_15__N_208[13])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n307_bdd_2_lut_7075_4_lut.init = 16'hca00;
    FD1S3IX data_out__i0 (.D(os_data_15__N_127[15]), .CK(sys_clk_c), .CD(n2046), 
            .Q(byte_align_data_lane0[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=19, LSE_RCOL=2, LSE_LLINE=177, LSE_RLINE=187 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam data_out__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_70 (.A(n6274), .B(data_squence[22]), .C(n7905), 
         .D(data_squence[19]), .Z(n6276)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_4_lut_adj_70.init = 16'hfffe;
    LUT4 n307_bdd_2_lut_7066_4_lut (.A(sync_found), .B(n7737), .C(seq_offect_valid_adj_1), 
         .D(raw_data_out_valid), .Z(data_out_15__N_208[11])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n307_bdd_2_lut_7066_4_lut.init = 16'hca00;
    PFUMX i6998 (.BLUT(n7592), .ALUT(n38_adj_485), .C0(n7896), .Z(n7593));
    PFUMX i7059 (.BLUT(n7733), .ALUT(n54), .C0(n7889), .Z(os_data_15__N_127[5]));
    LUT4 i1_4_lut_adj_71 (.A(data_squence[14]), .B(data_squence[20]), .C(data_squence[21]), 
         .D(data_squence[18]), .Z(n6274)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(66[9:41])
    defparam i1_4_lut_adj_71.init = 16'hfffe;
    PFUMX i7055 (.BLUT(n7721), .ALUT(n79), .C0(n7890), .Z(n7722));
    LUT4 i1_4_lut_adj_72 (.A(n7910), .B(n1949), .C(data_squence[15]), 
         .D(n6254), .Z(n6694)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_72.init = 16'hffef;
    PFUMX i7048 (.BLUT(n7709), .ALUT(n80), .C0(n7890), .Z(n7710));
    PFUMX i6986 (.BLUT(n7469), .ALUT(n50), .C0(n7889), .Z(os_data_15__N_127[1]));
    PFUMX i7046 (.BLUT(n7707), .ALUT(n7705), .C0(n7890), .Z(os_data_15__N_127[8]));
    LUT4 os_data_15__N_198_1__bdd_3_lut (.A(data_squence[4]), .B(seq_offset[0]), 
         .C(data_squence[3]), .Z(n7591)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam os_data_15__N_198_1__bdd_3_lut.init = 16'hb8b8;
    PFUMX i7041 (.BLUT(n7695), .ALUT(n7693), .C0(n7889), .Z(os_data_15__N_127[10]));
    LUT4 os_data_15__N_198_4__bdd_4_lut (.A(n7889), .B(n7099), .C(n7117), 
         .D(n7896), .Z(n7740)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !((D)+!C))) */ ;
    defparam os_data_15__N_198_4__bdd_4_lut.init = 16'hccd8;
    PFUMX i7037 (.BLUT(n7687), .ALUT(n7686), .C0(n7890), .Z(os_data_15__N_127[12]));
    LUT4 os_data_15__N_198_3__bdd_4_lut_7050_then_4_lut (.A(n31_adj_484), 
         .B(seq_offset[0]), .C(seq_offset[1]), .D(seq_offset[2]), .Z(n7931)) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A (B (D)+!B (C (D)+!C !(D)))) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut_7050_then_4_lut.init = 16'hfe83;
    LUT4 os_data_15__N_198_3__bdd_4_lut_7039 (.A(n7889), .B(n54), .C(n7896), 
         .D(n50), .Z(n7608)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut_7039.init = 16'h4540;
    LUT4 i1_2_lut_rep_197 (.A(data_squence[19]), .B(data_squence[18]), .Z(n7921)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_2_lut_rep_197.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_73 (.A(data_squence[19]), .B(data_squence[18]), 
         .C(n6316), .D(data_squence[13]), .Z(n6324)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_3_lut_4_lut_adj_73.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_74 (.A(data_squence[19]), .B(data_squence[18]), 
         .C(data_squence[27]), .D(data_squence[26]), .Z(n6300)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_2_lut_3_lut_4_lut_adj_74.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i28_3_lut (.A(data_squence[27]), .B(data_squence[28]), 
         .C(seq_offset[0]), .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i28_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i30_3_lut (.A(data_squence[29]), .B(data_squence[30]), 
         .C(seq_offset[0]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i30_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_198 (.A(data_squence[15]), .B(data_squence[16]), .Z(n7922)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_2_lut_rep_198.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_75 (.A(data_squence[15]), .B(data_squence[16]), 
         .C(data_squence[11]), .D(data_squence[25]), .Z(n6356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_3_lut_4_lut_adj_75.init = 16'hfffe;
    LUT4 i1_2_lut_rep_199 (.A(data_squence[21]), .B(data_squence[20]), .Z(n7923)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam i1_2_lut_rep_199.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_76 (.A(data_squence[21]), .B(data_squence[20]), 
         .C(data_squence[23]), .D(data_squence[22]), .Z(n6468)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam i1_3_lut_4_lut_adj_76.init = 16'hfffe;
    LUT4 n307_bdd_2_lut_7069_4_lut (.A(sync_found), .B(n7742), .C(seq_offect_valid_adj_1), 
         .D(raw_data_out_valid), .Z(data_out_15__N_208[12])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n307_bdd_2_lut_7069_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_rep_200 (.A(data_squence[23]), .B(data_squence[24]), .Z(n7924)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_rep_200.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_77 (.A(data_squence[23]), .B(data_squence[24]), 
         .C(data_squence[17]), .Z(n6334)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_3_lut_adj_77.init = 16'hfefe;
    LUT4 os_data_15__N_198_3__bdd_4_lut_7001 (.A(n7889), .B(n7896), .C(n60), 
         .D(n7131), .Z(n7605)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut_7001.init = 16'h5140;
    LUT4 i6743_3_lut_3_lut (.A(seq_offect_valid_adj_1), .B(sync_found), 
         .C(n17), .Z(os_data_15__N_127[0])) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(95[14] 115[8])
    defparam i6743_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_4_lut_adj_78 (.A(raw_data_out_valid), .B(n8_adj_2), .C(n6111), 
         .D(n6710), .Z(data_out_valid_N_225_adj_3)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_78.init = 16'haa2a;
    LUT4 i1_3_lut_adj_79 (.A(n6105), .B(n31), .C(seq_offect_valid), .Z(n6710)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_adj_79.init = 16'hf7f7;
    LUT4 i6931_2_lut_3_lut_4_lut (.A(n7879), .B(n7880), .C(n7878), .D(n7060), 
         .Z(found_offect[3])) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i6931_2_lut_3_lut_4_lut.init = 16'h7fff;
    LUT4 i1_4_lut_adj_80 (.A(n5785), .B(n1949), .C(n5598), .D(n6690), 
         .Z(n5956)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_80.init = 16'hfffe;
    PFUMX i17 (.BLUT(n7179), .ALUT(\os_data_15__N_127[0] ), .C0(n7283), 
          .Z(n6_adj_493));
    LUT4 i1_4_lut_adj_81 (.A(n7910), .B(data_squence[16]), .C(n7905), 
         .D(data_squence[19]), .Z(n5785)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_81.init = 16'hfffb;
    PFUMX i17_adj_82 (.BLUT(n7164), .ALUT(os_data_15__N_127[0]), .C0(n7265), 
          .Z(n6_adj_483));
    LUT4 i1_2_lut_adj_83 (.A(data_squence[15]), .B(data_squence[14]), .Z(n5598)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_adj_83.init = 16'hbbbb;
    LUT4 data_squence_31__I_0_92_i20_3_lut (.A(data_squence[19]), .B(data_squence[20]), 
         .C(seq_offset[0]), .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i20_3_lut.init = 16'hcaca;
    LUT4 n79_bdd_3_lut_7102_4_lut_4_lut (.A(seq_offset[2]), .B(seq_offset[0]), 
         .C(seq_offset[1]), .D(n31_adj_484), .Z(n7808)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam n79_bdd_3_lut_7102_4_lut_4_lut.init = 16'h8100;
    LUT4 os_data_15__N_198_3__bdd_4_lut_7050_else_4_lut (.A(n31_adj_484), 
         .B(seq_offset[0]), .C(seq_offset[1]), .D(seq_offset[2]), .Z(n7930)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut_7050_else_4_lut.init = 16'h0280;
    LUT4 i1_2_lut_adj_84 (.A(data_squence[29]), .B(data_squence[18]), .Z(n1949)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(65[9:41])
    defparam i1_2_lut_adj_84.init = 16'hbbbb;
    LUT4 data_squence_31__I_0_92_i6_3_lut (.A(data_squence[5]), .B(data_squence[6]), 
         .C(seq_offset[0]), .Z(n6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i6_3_lut.init = 16'hcaca;
    LUT4 os_data_15__N_198_3__bdd_4_lut (.A(n7889), .B(n59), .C(n7896), 
         .D(n7128), .Z(n7807)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam os_data_15__N_198_3__bdd_4_lut.init = 16'h4540;
    LUT4 i1_4_lut_adj_85 (.A(n6324), .B(data_squence[16]), .C(data_squence[11]), 
         .D(data_squence[25]), .Z(n6328)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_85.init = 16'hffef;
    LUT4 i6658_2_lut (.A(data_squence[15]), .B(data_squence[14]), .Z(n7003)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6658_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_86 (.A(data_squence[17]), .B(data_squence[24]), .C(data_squence[23]), 
         .D(data_squence[26]), .Z(n6316)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_86.init = 16'hfffe;
    LUT4 i1_4_lut_adj_87 (.A(n6310), .B(n7023), .C(data_squence[14]), 
         .D(n5632), .Z(n31_adj_477)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_87.init = 16'hffbf;
    LUT4 i1_4_lut_adj_88 (.A(n4), .B(n6300), .C(n6334), .D(n6294), .Z(n6310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_4_lut_adj_88.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i8_3_lut (.A(data_squence[7]), .B(data_squence[8]), 
         .C(seq_offset[0]), .Z(n8_adj_486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i8_3_lut.init = 16'hcaca;
    LUT4 i6678_2_lut (.A(data_squence[15]), .B(data_squence[16]), .Z(n7023)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6678_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_89 (.A(data_squence[13]), .B(data_squence[25]), .Z(n6294)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(67[9:41])
    defparam i1_2_lut_adj_89.init = 16'heeee;
    LUT4 i2590_3_lut (.A(data_squence[9]), .B(data_squence[10]), .C(seq_offset[0]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    defparam i2590_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_90 (.A(data_squence[12]), .B(data_squence[20]), .Z(n5574)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_90.init = 16'heeee;
    LUT4 i1_4_lut_adj_91 (.A(n5574), .B(n6612), .C(n7005), .D(data_squence[6]), 
         .Z(n6616)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_4_lut_adj_91.init = 16'hefff;
    LUT4 i1_4_lut_adj_92 (.A(n6600), .B(n5847), .C(n7909), .D(n6598), 
         .Z(n6612)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_4_lut_adj_92.init = 16'hfffe;
    LUT4 i6660_2_lut (.A(data_squence[8]), .B(data_squence[10]), .Z(n7005)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6660_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_93 (.A(data_squence[21]), .B(data_squence[18]), .Z(n6600)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_2_lut_adj_93.init = 16'heeee;
    LUT4 i1_2_lut_adj_94 (.A(data_squence[19]), .B(data_squence[7]), .Z(n6598)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(73[9:40])
    defparam i1_2_lut_adj_94.init = 16'heeee;
    LUT4 i1_4_lut_adj_95 (.A(n6328), .B(n7003), .C(n5632), .D(n5574), 
         .Z(n31_adj_476)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_95.init = 16'hfffb;
    LUT4 i2589_3_lut (.A(data_squence[11]), .B(data_squence[12]), .C(seq_offset[0]), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(40[11:21])
    defparam i2589_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_96 (.A(n7924), .B(data_squence[17]), .C(n5632), 
         .D(data_squence[20]), .Z(n6690)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(63[9:41])
    defparam i1_4_lut_adj_96.init = 16'hfffb;
    LUT4 i1_3_lut_adj_97 (.A(data_squence[15]), .B(data_squence[16]), .C(data_squence[14]), 
         .Z(n5847)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_3_lut_adj_97.init = 16'hfefe;
    LUT4 i1_4_lut_adj_98 (.A(n5574), .B(n6656), .C(n6999), .D(data_squence[7]), 
         .Z(n6660)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_4_lut_adj_98.init = 16'hefff;
    LUT4 i1_3_lut_adj_99 (.A(n5956), .B(n6146), .C(seq_offect_valid_adj_1), 
         .Z(n6704)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_adj_99.init = 16'hf7f7;
    LUT4 i6654_2_lut (.A(data_squence[5]), .B(data_squence[8]), .Z(n6999)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6654_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_100 (.A(raw_data_out_valid), .B(n6_adj_493), .Z(\data_out_15__N_208[15] )) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_100.init = 16'h8888;
    LUT4 i1_4_lut_adj_101 (.A(data_squence[10]), .B(data_squence[18]), .C(data_squence[19]), 
         .D(data_squence[6]), .Z(n6648)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(75[9:40])
    defparam i1_4_lut_adj_101.init = 16'hfffe;
    LUT4 i1_4_lut_adj_102 (.A(n6474), .B(n51), .C(data_squence[12]), .D(n6468), 
         .Z(n31_adj_471)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(46[14] 53[8])
    defparam i1_4_lut_adj_102.init = 16'hffbf;
    LUT4 i1_2_lut_rep_180 (.A(data_squence[10]), .B(data_squence[14]), .Z(n7904)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_2_lut_rep_180.init = 16'heeee;
    LUT4 data_squence_31__I_0_92_i14_3_lut (.A(data_squence[13]), .B(data_squence[14]), 
         .C(seq_offset[0]), .Z(n14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i14_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_103 (.A(data_squence[10]), .B(data_squence[14]), 
         .C(data_squence[15]), .D(n6772), .Z(n6776)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_3_lut_4_lut_adj_103.init = 16'hfffe;
    LUT4 data_squence_31__I_0_92_i24_3_lut (.A(data_squence[23]), .B(data_squence[24]), 
         .C(seq_offset[0]), .Z(n24)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i24_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i16_3_lut (.A(data_squence[15]), .B(data_squence[16]), 
         .C(seq_offset[0]), .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i16_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i18_3_lut (.A(data_squence[17]), .B(data_squence[18]), 
         .C(seq_offset[0]), .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i18_3_lut.init = 16'hcaca;
    LUT4 data_squence_31__I_0_92_i26_3_lut (.A(data_squence[25]), .B(data_squence[26]), 
         .C(seq_offset[0]), .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i26_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_104 (.A(n7031), .B(n7895), .C(n51), .D(n6482), 
         .Z(n31_adj_472)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(41[12:24])
    defparam i1_4_lut_adj_104.init = 16'hffdf;
    LUT4 i6686_2_lut (.A(data_squence[7]), .B(data_squence[9]), .Z(n7031)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6686_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_105 (.A(n6985), .B(data_squence[11]), .C(n7922), 
         .D(n7904), .Z(n6350)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(71[9:40])
    defparam i1_4_lut_adj_105.init = 16'hfff7;
    LUT4 i1_4_lut_adj_106 (.A(data_squence[8]), .B(n5632), .C(data_squence[20]), 
         .D(data_squence[12]), .Z(n6482)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(41[12:24])
    defparam i1_4_lut_adj_106.init = 16'hfffe;
    LUT4 i6641_2_lut (.A(data_squence[13]), .B(data_squence[9]), .Z(n6985)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6641_2_lut.init = 16'h8888;
    LUT4 data_squence_31__I_0_92_i84_rep_32_4_lut (.A(n7131), .B(n7890), 
         .C(n7889), .D(n92), .Z(n7090)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_byte_aligner.v(84[22:55])
    defparam data_squence_31__I_0_92_i84_rep_32_4_lut.init = 16'h3a0a;
    LUT4 data_squence_1__bdd_3_lut_7013 (.A(data_squence[2]), .B(seq_offset[0]), 
         .C(data_squence[3]), .Z(n7648)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam data_squence_1__bdd_3_lut_7013.init = 16'he2e2;
    PFUMX i7142 (.BLUT(n7930), .ALUT(n7931), .C0(n59), .Z(n7932));
    
endmodule
//
// Verilog Description of module mipi_lane_state_detection
//

module mipi_lane_state_detection (sys_clk_c, d0_cd, lp_lane_data0, hs_burst_flag_c) /* synthesis syn_module_defined=1 */ ;
    input sys_clk_c;
    input d0_cd;
    input [1:0]lp_lane_data0;
    output hs_burst_flag_c;
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/top.v(15[12:19])
    
    wire rx_state_3__N_14, n1451, lp_lane_data0_cd_d;
    wire [1:0]lp_data0_d;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(25[11:21])
    
    wire hs_burst_flag_N_28, rx_state_3__N_11, n3, n1453, rx_state_3__N_12, 
        n1415, rx_state_3__N_13, n351;
    
    FD1S3AX rx_state_FSM_i1 (.D(n1451), .CK(sys_clk_c), .Q(rx_state_3__N_14));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam rx_state_FSM_i1.GSR = "ENABLED";
    FD1S3AX lp_lane_data0_cd_d_25 (.D(d0_cd), .CK(sys_clk_c), .Q(lp_lane_data0_cd_d)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=27, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=113 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(29[8] 32[4])
    defparam lp_lane_data0_cd_d_25.GSR = "DISABLED";
    FD1S3AX lp_data0_d_i0 (.D(lp_lane_data0[0]), .CK(sys_clk_c), .Q(lp_data0_d[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=27, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=113 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(29[8] 32[4])
    defparam lp_data0_d_i0.GSR = "DISABLED";
    FD1S3AX hs_burst_flag_27 (.D(hs_burst_flag_N_28), .CK(sys_clk_c), .Q(hs_burst_flag_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=27, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=113 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(39[14] 74[8])
    defparam hs_burst_flag_27.GSR = "ENABLED";
    LUT4 i1100_4_lut (.A(rx_state_3__N_11), .B(lp_lane_data0_cd_d), .C(n3), 
         .D(rx_state_3__N_14), .Z(n1453)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam i1100_4_lut.init = 16'heca0;
    LUT4 equal_7_i3_2_lut (.A(lp_data0_d[0]), .B(lp_data0_d[1]), .Z(n3)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(44[21:37])
    defparam equal_7_i3_2_lut.init = 16'hdddd;
    FD1S3AX lp_data0_d_i1 (.D(lp_lane_data0[1]), .CK(sys_clk_c), .Q(lp_data0_d[1])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=27, LSE_RCOL=2, LSE_LLINE=105, LSE_RLINE=113 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(29[8] 32[4])
    defparam lp_data0_d_i1.GSR = "DISABLED";
    FD1S3AY rx_state_FSM_i4 (.D(n1453), .CK(sys_clk_c), .Q(rx_state_3__N_11));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam rx_state_FSM_i4.GSR = "ENABLED";
    FD1S3AX rx_state_FSM_i3 (.D(n1415), .CK(sys_clk_c), .Q(rx_state_3__N_12));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam rx_state_FSM_i3.GSR = "ENABLED";
    FD1S3AX rx_state_FSM_i2 (.D(n351), .CK(sys_clk_c), .Q(rx_state_3__N_13));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam rx_state_FSM_i2.GSR = "ENABLED";
    LUT4 i45_2_lut_3_lut (.A(lp_data0_d[0]), .B(lp_data0_d[1]), .C(rx_state_3__N_12), 
         .Z(n351)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(51[21:37])
    defparam i45_2_lut_3_lut.init = 16'h1010;
    LUT4 i1062_4_lut_4_lut (.A(rx_state_3__N_12), .B(lp_data0_d[0]), .C(lp_data0_d[1]), 
         .D(rx_state_3__N_11), .Z(n1415)) /* synthesis lut_function=(A (B+(C))+!A !((C+!(D))+!B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam i1062_4_lut_4_lut.init = 16'haca8;
    LUT4 i1098_3_lut (.A(rx_state_3__N_14), .B(rx_state_3__N_13), .C(lp_lane_data0_cd_d), 
         .Z(n1451)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam i1098_3_lut.init = 16'hcece;
    LUT4 i1_4_lut (.A(rx_state_3__N_14), .B(hs_burst_flag_c), .C(rx_state_3__N_12), 
         .D(rx_state_3__N_13), .Z(hs_burst_flag_N_28)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_lane_state_detection.v(41[9] 73[16])
    defparam i1_4_lut.init = 16'heeea;
    
endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 12:59:02 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 4096 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr331240963312409612192895 -pmi -lang verilog  */
/* Mon Jul 14 12:59:02 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr331240963312409612192895 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [11:0] WrAddress;
    input wire [11:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire raddr10_ff;
    wire scuba_vlo;
    wire raddr11_ff;
    wire mdout1_3_0;
    wire mdout1_2_0;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_3_1;
    wire mdout1_2_1;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_3_2;
    wire mdout1_2_2;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_3_3;
    wire mdout1_2_3;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_3_4;
    wire mdout1_2_4;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_3_5;
    wire mdout1_2_5;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_3_6;
    wire mdout1_2_6;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_3_7;
    wire mdout1_2_7;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_3_8;
    wire mdout1_2_8;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_3_9;
    wire mdout1_2_9;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_3_10;
    wire mdout1_2_10;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_3_11;
    wire mdout1_2_11;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_3_12;
    wire mdout1_2_12;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_3_13;
    wire mdout1_2_13;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_3_14;
    wire mdout1_2_14;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_3_15;
    wire mdout1_2_15;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_3_16;
    wire mdout1_2_16;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_3_17;
    wire mdout1_2_17;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_3_18;
    wire mdout1_2_18;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_3_19;
    wire mdout1_2_19;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_3_20;
    wire mdout1_2_20;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_3_21;
    wire mdout1_2_21;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_3_22;
    wire mdout1_2_22;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_3_23;
    wire mdout1_2_23;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_3_24;
    wire mdout1_2_24;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_3_25;
    wire mdout1_2_25;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_3_26;
    wire mdout1_2_26;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_3_27;
    wire mdout1_2_27;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_3_28;
    wire mdout1_2_28;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_3_29;
    wire mdout1_2_29;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_3_30;
    wire mdout1_2_30;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_3_31;
    wire mdout1_2_31;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr11_ff2;
    wire raddr10_ff2;
    wire mdout1_3_32;
    wire mdout1_2_32;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), 
        .DOB6(mdout1_0_6), .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), 
        .DOB2(mdout1_0_2), .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), 
        .DOB6(mdout1_0_15), .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), 
        .DOB2(mdout1_0_11), .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), 
        .DOB6(mdout1_0_24), .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), 
        .DOB2(mdout1_0_20), .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), 
        .DOB4(mdout1_0_31), .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), 
        .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), 
        .DOB6(mdout1_1_6), .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), 
        .DOB2(mdout1_1_2), .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), 
        .DOB6(mdout1_1_15), .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), 
        .DOB2(mdout1_1_11), .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), 
        .DOB6(mdout1_1_24), .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), 
        .DOB2(mdout1_1_20), .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), 
        .DOB4(mdout1_1_31), .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), 
        .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_8), .DOB7(mdout1_2_7), 
        .DOB6(mdout1_2_6), .DOB5(mdout1_2_5), .DOB4(mdout1_2_4), .DOB3(mdout1_2_3), 
        .DOB2(mdout1_2_2), .DOB1(mdout1_2_1), .DOB0(mdout1_2_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_17), .DOB7(mdout1_2_16), 
        .DOB6(mdout1_2_15), .DOB5(mdout1_2_14), .DOB4(mdout1_2_13), .DOB3(mdout1_2_12), 
        .DOB2(mdout1_2_11), .DOB1(mdout1_2_10), .DOB0(mdout1_2_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_26), .DOB7(mdout1_2_25), 
        .DOB6(mdout1_2_24), .DOB5(mdout1_2_23), .DOB4(mdout1_2_22), .DOB3(mdout1_2_21), 
        .DOB2(mdout1_2_20), .DOB1(mdout1_2_19), .DOB0(mdout1_2_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_2_32), 
        .DOB4(mdout1_2_31), .DOB3(mdout1_2_30), .DOB2(mdout1_2_29), .DOB1(mdout1_2_28), 
        .DOB0(mdout1_2_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_8), .DOB7(mdout1_3_7), 
        .DOB6(mdout1_3_6), .DOB5(mdout1_3_5), .DOB4(mdout1_3_4), .DOB3(mdout1_3_3), 
        .DOB2(mdout1_3_2), .DOB1(mdout1_3_1), .DOB0(mdout1_3_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_17), .DOB7(mdout1_3_16), 
        .DOB6(mdout1_3_15), .DOB5(mdout1_3_14), .DOB4(mdout1_3_13), .DOB3(mdout1_3_12), 
        .DOB2(mdout1_3_11), .DOB1(mdout1_3_10), .DOB0(mdout1_3_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_26), .DOB7(mdout1_3_25), 
        .DOB6(mdout1_3_24), .DOB5(mdout1_3_23), .DOB4(mdout1_3_22), .DOB3(mdout1_3_21), 
        .DOB2(mdout1_3_20), .DOB1(mdout1_3_19), .DOB0(mdout1_3_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_3_32), 
        .DOB4(mdout1_3_31), .DOB3(mdout1_3_30), .DOB2(mdout1_3_29), .DOB1(mdout1_3_28), 
        .DOB0(mdout1_3_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_3 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(RdAddress[11]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr11_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX41 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .D2(mdout1_2_0), .D3(mdout1_3_0), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[0]));

    MUX41 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .D2(mdout1_2_1), .D3(mdout1_3_1), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[1]));

    MUX41 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .D2(mdout1_2_2), .D3(mdout1_3_2), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[2]));

    MUX41 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .D2(mdout1_2_3), .D3(mdout1_3_3), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[3]));

    MUX41 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .D2(mdout1_2_4), .D3(mdout1_3_4), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[4]));

    MUX41 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .D2(mdout1_2_5), .D3(mdout1_3_5), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[5]));

    MUX41 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .D2(mdout1_2_6), .D3(mdout1_3_6), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[6]));

    MUX41 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .D2(mdout1_2_7), .D3(mdout1_3_7), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[7]));

    MUX41 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .D2(mdout1_2_8), .D3(mdout1_3_8), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[8]));

    MUX41 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .D2(mdout1_2_9), .D3(mdout1_3_9), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[9]));

    MUX41 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .D2(mdout1_2_10), 
        .D3(mdout1_3_10), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[10]));

    MUX41 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .D2(mdout1_2_11), 
        .D3(mdout1_3_11), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[11]));

    MUX41 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .D2(mdout1_2_12), 
        .D3(mdout1_3_12), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[12]));

    MUX41 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .D2(mdout1_2_13), 
        .D3(mdout1_3_13), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[13]));

    MUX41 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .D2(mdout1_2_14), 
        .D3(mdout1_3_14), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[14]));

    MUX41 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .D2(mdout1_2_15), 
        .D3(mdout1_3_15), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[15]));

    MUX41 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .D2(mdout1_2_16), 
        .D3(mdout1_3_16), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[16]));

    MUX41 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .D2(mdout1_2_17), 
        .D3(mdout1_3_17), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[17]));

    MUX41 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .D2(mdout1_2_18), 
        .D3(mdout1_3_18), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[18]));

    MUX41 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .D2(mdout1_2_19), 
        .D3(mdout1_3_19), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[19]));

    MUX41 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .D2(mdout1_2_20), 
        .D3(mdout1_3_20), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[20]));

    MUX41 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .D2(mdout1_2_21), 
        .D3(mdout1_3_21), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[21]));

    MUX41 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .D2(mdout1_2_22), 
        .D3(mdout1_3_22), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[22]));

    MUX41 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .D2(mdout1_2_23), .D3(mdout1_3_23), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[23]));

    MUX41 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .D2(mdout1_2_24), .D3(mdout1_3_24), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[24]));

    MUX41 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .D2(mdout1_2_25), .D3(mdout1_3_25), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[25]));

    MUX41 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .D2(mdout1_2_26), .D3(mdout1_3_26), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[26]));

    MUX41 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .D2(mdout1_2_27), .D3(mdout1_3_27), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[27]));

    MUX41 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .D2(mdout1_2_28), .D3(mdout1_3_28), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[28]));

    MUX41 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .D2(mdout1_2_29), .D3(mdout1_3_29), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[29]));

    MUX41 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .D2(mdout1_2_30), .D3(mdout1_3_30), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[30]));

    MUX41 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .D2(mdout1_2_31), .D3(mdout1_3_31), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[31]));

    MUX41 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .D2(mdout1_2_32), .D3(mdout1_3_32), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:10:35 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 102 -num_rows 512 -rdata_width 102 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1029512102951211f4fbae -pmi -lang verilog  */
/* Mon Jul 14 14:10:35 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1029512102951211f4fbae (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [101:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [101:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(Q[101]), .DO1(Q[100]), 
        .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:15:12 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 33 -num_rows 4096 -rdata_width 33 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr331240963312409612192895 -pmi -lang verilog  */
/* Mon Jul 14 14:15:12 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr331240963312409612192895 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [11:0] WrAddress;
    input wire [11:0] RdAddress;
    input wire [32:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [32:0] Q;

    wire scuba_vhi;
    wire raddr10_ff;
    wire scuba_vlo;
    wire raddr11_ff;
    wire mdout1_3_0;
    wire mdout1_2_0;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_3_1;
    wire mdout1_2_1;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_3_2;
    wire mdout1_2_2;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_3_3;
    wire mdout1_2_3;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_3_4;
    wire mdout1_2_4;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_3_5;
    wire mdout1_2_5;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_3_6;
    wire mdout1_2_6;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_3_7;
    wire mdout1_2_7;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_3_8;
    wire mdout1_2_8;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_3_9;
    wire mdout1_2_9;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_3_10;
    wire mdout1_2_10;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_3_11;
    wire mdout1_2_11;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_3_12;
    wire mdout1_2_12;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_3_13;
    wire mdout1_2_13;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_3_14;
    wire mdout1_2_14;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_3_15;
    wire mdout1_2_15;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire mdout1_3_16;
    wire mdout1_2_16;
    wire mdout1_1_16;
    wire mdout1_0_16;
    wire mdout1_3_17;
    wire mdout1_2_17;
    wire mdout1_1_17;
    wire mdout1_0_17;
    wire mdout1_3_18;
    wire mdout1_2_18;
    wire mdout1_1_18;
    wire mdout1_0_18;
    wire mdout1_3_19;
    wire mdout1_2_19;
    wire mdout1_1_19;
    wire mdout1_0_19;
    wire mdout1_3_20;
    wire mdout1_2_20;
    wire mdout1_1_20;
    wire mdout1_0_20;
    wire mdout1_3_21;
    wire mdout1_2_21;
    wire mdout1_1_21;
    wire mdout1_0_21;
    wire mdout1_3_22;
    wire mdout1_2_22;
    wire mdout1_1_22;
    wire mdout1_0_22;
    wire mdout1_3_23;
    wire mdout1_2_23;
    wire mdout1_1_23;
    wire mdout1_0_23;
    wire mdout1_3_24;
    wire mdout1_2_24;
    wire mdout1_1_24;
    wire mdout1_0_24;
    wire mdout1_3_25;
    wire mdout1_2_25;
    wire mdout1_1_25;
    wire mdout1_0_25;
    wire mdout1_3_26;
    wire mdout1_2_26;
    wire mdout1_1_26;
    wire mdout1_0_26;
    wire mdout1_3_27;
    wire mdout1_2_27;
    wire mdout1_1_27;
    wire mdout1_0_27;
    wire mdout1_3_28;
    wire mdout1_2_28;
    wire mdout1_1_28;
    wire mdout1_0_28;
    wire mdout1_3_29;
    wire mdout1_2_29;
    wire mdout1_1_29;
    wire mdout1_0_29;
    wire mdout1_3_30;
    wire mdout1_2_30;
    wire mdout1_1_30;
    wire mdout1_0_30;
    wire mdout1_3_31;
    wire mdout1_2_31;
    wire mdout1_1_31;
    wire mdout1_0_31;
    wire raddr11_ff2;
    wire raddr10_ff2;
    wire mdout1_3_32;
    wire mdout1_2_32;
    wire mdout1_1_32;
    wire mdout1_0_32;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), 
        .DOB6(mdout1_0_6), .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), 
        .DOB2(mdout1_0_2), .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_17), .DOB7(mdout1_0_16), 
        .DOB6(mdout1_0_15), .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), 
        .DOB2(mdout1_0_11), .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_26), .DOB7(mdout1_0_25), 
        .DOB6(mdout1_0_24), .DOB5(mdout1_0_23), .DOB4(mdout1_0_22), .DOB3(mdout1_0_21), 
        .DOB2(mdout1_0_20), .DOB1(mdout1_0_19), .DOB0(mdout1_0_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_0_32), 
        .DOB4(mdout1_0_31), .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), 
        .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), 
        .DOB6(mdout1_1_6), .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), 
        .DOB2(mdout1_1_2), .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_17), .DOB7(mdout1_1_16), 
        .DOB6(mdout1_1_15), .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), 
        .DOB2(mdout1_1_11), .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_26), .DOB7(mdout1_1_25), 
        .DOB6(mdout1_1_24), .DOB5(mdout1_1_23), .DOB4(mdout1_1_22), .DOB3(mdout1_1_21), 
        .DOB2(mdout1_1_20), .DOB1(mdout1_1_19), .DOB0(mdout1_1_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_1_32), 
        .DOB4(mdout1_1_31), .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), 
        .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_8), .DOB7(mdout1_2_7), 
        .DOB6(mdout1_2_6), .DOB5(mdout1_2_5), .DOB4(mdout1_2_4), .DOB3(mdout1_2_3), 
        .DOB2(mdout1_2_2), .DOB1(mdout1_2_1), .DOB0(mdout1_2_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_17), .DOB7(mdout1_2_16), 
        .DOB6(mdout1_2_15), .DOB5(mdout1_2_14), .DOB4(mdout1_2_13), .DOB3(mdout1_2_12), 
        .DOB2(mdout1_2_11), .DOB1(mdout1_2_10), .DOB0(mdout1_2_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_26), .DOB7(mdout1_2_25), 
        .DOB6(mdout1_2_24), .DOB5(mdout1_2_23), .DOB4(mdout1_2_22), .DOB3(mdout1_2_21), 
        .DOB2(mdout1_2_20), .DOB1(mdout1_2_19), .DOB0(mdout1_2_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_2_32), 
        .DOB4(mdout1_2_31), .DOB3(mdout1_2_30), .DOB2(mdout1_2_29), .DOB1(mdout1_2_28), 
        .DOB0(mdout1_2_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_8), .DOB7(mdout1_3_7), 
        .DOB6(mdout1_3_6), .DOB5(mdout1_3_5), .DOB4(mdout1_3_4), .DOB3(mdout1_3_3), 
        .DOB2(mdout1_3_2), .DOB1(mdout1_3_1), .DOB0(mdout1_3_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_17), .DOB7(mdout1_3_16), 
        .DOB6(mdout1_3_15), .DOB5(mdout1_3_14), .DOB4(mdout1_3_13), .DOB3(mdout1_3_12), 
        .DOB2(mdout1_3_11), .DOB1(mdout1_3_10), .DOB0(mdout1_3_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_26), .DOB7(mdout1_3_25), 
        .DOB6(mdout1_3_24), .DOB5(mdout1_3_23), .DOB4(mdout1_3_22), .DOB3(mdout1_3_21), 
        .DOB2(mdout1_3_20), .DOB1(mdout1_3_19), .DOB0(mdout1_3_18))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(scuba_vlo), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(mdout1_3_32), 
        .DOB4(mdout1_3_31), .DOB3(mdout1_3_30), .DOB2(mdout1_3_29), .DOB1(mdout1_3_28), 
        .DOB0(mdout1_3_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_3 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(RdAddress[11]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr11_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX41 mux_32 (.D0(mdout1_0_0), .D1(mdout1_1_0), .D2(mdout1_2_0), .D3(mdout1_3_0), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[0]));

    MUX41 mux_31 (.D0(mdout1_0_1), .D1(mdout1_1_1), .D2(mdout1_2_1), .D3(mdout1_3_1), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[1]));

    MUX41 mux_30 (.D0(mdout1_0_2), .D1(mdout1_1_2), .D2(mdout1_2_2), .D3(mdout1_3_2), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[2]));

    MUX41 mux_29 (.D0(mdout1_0_3), .D1(mdout1_1_3), .D2(mdout1_2_3), .D3(mdout1_3_3), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[3]));

    MUX41 mux_28 (.D0(mdout1_0_4), .D1(mdout1_1_4), .D2(mdout1_2_4), .D3(mdout1_3_4), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[4]));

    MUX41 mux_27 (.D0(mdout1_0_5), .D1(mdout1_1_5), .D2(mdout1_2_5), .D3(mdout1_3_5), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[5]));

    MUX41 mux_26 (.D0(mdout1_0_6), .D1(mdout1_1_6), .D2(mdout1_2_6), .D3(mdout1_3_6), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[6]));

    MUX41 mux_25 (.D0(mdout1_0_7), .D1(mdout1_1_7), .D2(mdout1_2_7), .D3(mdout1_3_7), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[7]));

    MUX41 mux_24 (.D0(mdout1_0_8), .D1(mdout1_1_8), .D2(mdout1_2_8), .D3(mdout1_3_8), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[8]));

    MUX41 mux_23 (.D0(mdout1_0_9), .D1(mdout1_1_9), .D2(mdout1_2_9), .D3(mdout1_3_9), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[9]));

    MUX41 mux_22 (.D0(mdout1_0_10), .D1(mdout1_1_10), .D2(mdout1_2_10), 
        .D3(mdout1_3_10), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[10]));

    MUX41 mux_21 (.D0(mdout1_0_11), .D1(mdout1_1_11), .D2(mdout1_2_11), 
        .D3(mdout1_3_11), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[11]));

    MUX41 mux_20 (.D0(mdout1_0_12), .D1(mdout1_1_12), .D2(mdout1_2_12), 
        .D3(mdout1_3_12), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[12]));

    MUX41 mux_19 (.D0(mdout1_0_13), .D1(mdout1_1_13), .D2(mdout1_2_13), 
        .D3(mdout1_3_13), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[13]));

    MUX41 mux_18 (.D0(mdout1_0_14), .D1(mdout1_1_14), .D2(mdout1_2_14), 
        .D3(mdout1_3_14), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[14]));

    MUX41 mux_17 (.D0(mdout1_0_15), .D1(mdout1_1_15), .D2(mdout1_2_15), 
        .D3(mdout1_3_15), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[15]));

    MUX41 mux_16 (.D0(mdout1_0_16), .D1(mdout1_1_16), .D2(mdout1_2_16), 
        .D3(mdout1_3_16), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[16]));

    MUX41 mux_15 (.D0(mdout1_0_17), .D1(mdout1_1_17), .D2(mdout1_2_17), 
        .D3(mdout1_3_17), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[17]));

    MUX41 mux_14 (.D0(mdout1_0_18), .D1(mdout1_1_18), .D2(mdout1_2_18), 
        .D3(mdout1_3_18), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[18]));

    MUX41 mux_13 (.D0(mdout1_0_19), .D1(mdout1_1_19), .D2(mdout1_2_19), 
        .D3(mdout1_3_19), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[19]));

    MUX41 mux_12 (.D0(mdout1_0_20), .D1(mdout1_1_20), .D2(mdout1_2_20), 
        .D3(mdout1_3_20), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[20]));

    MUX41 mux_11 (.D0(mdout1_0_21), .D1(mdout1_1_21), .D2(mdout1_2_21), 
        .D3(mdout1_3_21), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[21]));

    MUX41 mux_10 (.D0(mdout1_0_22), .D1(mdout1_1_22), .D2(mdout1_2_22), 
        .D3(mdout1_3_22), .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[22]));

    MUX41 mux_9 (.D0(mdout1_0_23), .D1(mdout1_1_23), .D2(mdout1_2_23), .D3(mdout1_3_23), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[23]));

    MUX41 mux_8 (.D0(mdout1_0_24), .D1(mdout1_1_24), .D2(mdout1_2_24), .D3(mdout1_3_24), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[24]));

    MUX41 mux_7 (.D0(mdout1_0_25), .D1(mdout1_1_25), .D2(mdout1_2_25), .D3(mdout1_3_25), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[25]));

    MUX41 mux_6 (.D0(mdout1_0_26), .D1(mdout1_1_26), .D2(mdout1_2_26), .D3(mdout1_3_26), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[26]));

    MUX41 mux_5 (.D0(mdout1_0_27), .D1(mdout1_1_27), .D2(mdout1_2_27), .D3(mdout1_3_27), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[27]));

    MUX41 mux_4 (.D0(mdout1_0_28), .D1(mdout1_1_28), .D2(mdout1_2_28), .D3(mdout1_3_28), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[28]));

    MUX41 mux_3 (.D0(mdout1_0_29), .D1(mdout1_1_29), .D2(mdout1_2_29), .D3(mdout1_3_29), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[29]));

    MUX41 mux_2 (.D0(mdout1_0_30), .D1(mdout1_1_30), .D2(mdout1_2_30), .D3(mdout1_3_30), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[30]));

    MUX41 mux_1 (.D0(mdout1_0_31), .D1(mdout1_1_31), .D2(mdout1_2_31), .D3(mdout1_3_31), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[31]));

    MUX41 mux_0 (.D0(mdout1_0_32), .D1(mdout1_1_32), .D2(mdout1_2_32), .D3(mdout1_3_32), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .Z(Q[32]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_0_15 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_1_14 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_2_13 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_0_3_12 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_0_11 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_1_10 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_2_9 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_1_3_8 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_2_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr331240963312409612192895__PMIP__4096__33__33B
    // exemplar attribute pmi_ram_dpLbnonesadr331240963312409612192895_3_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:18:11 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 102 -num_rows 512 -rdata_width 102 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1029512102951211f4fbae -pmi -lang verilog  */
/* Mon Jul 14 14:18:11 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1029512102951211f4fbae (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [101:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [101:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(Q[101]), .DO1(Q[100]), 
        .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:24:28 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 102 -num_rows 512 -rdata_width 102 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1029512102951211f4fbae -pmi -lang verilog  */
/* Mon Jul 14 14:24:28 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1029512102951211f4fbae (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [101:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [101:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(Q[101]), .DO1(Q[100]), 
        .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_0_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_1_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_2_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_3_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_4_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1029512102951211f4fbae__PMIP__512__102__102B
    // exemplar attribute pmi_ram_dpLbnonesadr1029512102951211f4fbae_0_5_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:31:40 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 87 -num_rows 1024 -rdata_width 87 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr87101024871010241219003b -pmi -lang verilog  */
/* Mon Jul 14 14:31:40 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr87101024871010241219003b (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [86:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [86:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6 (.DIA8(Data[35]), 
        .DIA7(Data[34]), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[35]), .DOB7(Q[34]), .DOB6(Q[33]), .DOB5(Q[32]), 
        .DOB4(Q[31]), .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5 (.DIA8(Data[44]), 
        .DIA7(Data[43]), .DIA6(Data[42]), .DIA5(Data[41]), .DIA4(Data[40]), 
        .DIA3(Data[39]), .DIA2(Data[38]), .DIA1(Data[37]), .DIA0(Data[36]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[44]), .DOB7(Q[43]), .DOB6(Q[42]), .DOB5(Q[41]), 
        .DOB4(Q[40]), .DOB3(Q[39]), .DOB2(Q[38]), .DOB1(Q[37]), .DOB0(Q[36]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4 (.DIA8(Data[53]), 
        .DIA7(Data[52]), .DIA6(Data[51]), .DIA5(Data[50]), .DIA4(Data[49]), 
        .DIA3(Data[48]), .DIA2(Data[47]), .DIA1(Data[46]), .DIA0(Data[45]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[53]), .DOB7(Q[52]), .DOB6(Q[51]), .DOB5(Q[50]), 
        .DOB4(Q[49]), .DOB3(Q[48]), .DOB2(Q[47]), .DOB1(Q[46]), .DOB0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3 (.DIA8(Data[62]), 
        .DIA7(Data[61]), .DIA6(Data[60]), .DIA5(Data[59]), .DIA4(Data[58]), 
        .DIA3(Data[57]), .DIA2(Data[56]), .DIA1(Data[55]), .DIA0(Data[54]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[62]), .DOB7(Q[61]), .DOB6(Q[60]), .DOB5(Q[59]), 
        .DOB4(Q[58]), .DOB3(Q[57]), .DOB2(Q[56]), .DOB1(Q[55]), .DOB0(Q[54]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2 (.DIA8(Data[71]), 
        .DIA7(Data[70]), .DIA6(Data[69]), .DIA5(Data[68]), .DIA4(Data[67]), 
        .DIA3(Data[66]), .DIA2(Data[65]), .DIA1(Data[64]), .DIA0(Data[63]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[71]), .DOB7(Q[70]), .DOB6(Q[69]), .DOB5(Q[68]), 
        .DOB4(Q[67]), .DOB3(Q[66]), .DOB2(Q[65]), .DOB1(Q[64]), .DOB0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1 (.DIA8(Data[80]), 
        .DIA7(Data[79]), .DIA6(Data[78]), .DIA5(Data[77]), .DIA4(Data[76]), 
        .DIA3(Data[75]), .DIA2(Data[74]), .DIA1(Data[73]), .DIA0(Data[72]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[80]), .DOB7(Q[79]), .DOB6(Q[78]), .DOB5(Q[77]), 
        .DOB4(Q[76]), .DOB3(Q[75]), .DOB2(Q[74]), .DOB1(Q[73]), .DOB0(Q[72]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(Data[86]), .DIA4(Data[85]), 
        .DIA3(Data[84]), .DIA2(Data[83]), .DIA1(Data[82]), .DIA0(Data[81]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(Q[86]), .DOB4(Q[85]), 
        .DOB3(Q[84]), .DOB2(Q[83]), .DOB1(Q[82]), .DOB0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_0_9 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_1_8 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_2_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_3_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_4_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_5_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_6_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_7_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_8_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr87101024871010241219003b__PMIP__1024__87__87B
    // exemplar attribute pmi_ram_dpLbnonesadr87101024871010241219003b_0_9_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:39:01 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 34 -num_rows 1024 -rdata_width 34 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr34101024341010241218bb12 -pmi -lang verilog  */
/* Mon Jul 14 14:39:01 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr34101024341010241218bb12 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [33:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [33:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(Q[33]), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:39:37 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 34 -num_rows 1024 -rdata_width 34 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr34101024341010241218bb12 -pmi -lang verilog  */
/* Mon Jul 14 14:39:37 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr34101024341010241218bb12 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [33:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [33:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(Q[33]), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:48:51 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 17 -num_rows 1024 -rdata_width 17 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr17101024171010241218c3e8 -pmi -lang verilog  */
/* Mon Jul 14 14:48:51 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr17101024171010241218c3e8 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [16:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [16:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr17101024171010241218c3e8__PMIP__1024__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), .DOB4(Q[13]), 
        .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr17101024171010241218c3e8__PMIP__1024__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr17101024171010241218c3e8__PMIP__1024__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr17101024171010241218c3e8__PMIP__1024__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr17101024171010241218c3e8_0_1_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:53:04 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 17 -num_rows 8192 -rdata_width 17 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr171381921713819212194b45 -pmi -lang verilog  */
/* Mon Jul 14 14:53:04 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr171381921713819212194b45 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [12:0] WrAddress;
    input wire [12:0] RdAddress;
    input wire [16:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [16:0] Q;

    wire scuba_vhi;
    wire raddr10_ff;
    wire raddr11_ff;
    wire scuba_vlo;
    wire raddr12_ff;
    wire mdout1_7_0;
    wire mdout1_6_0;
    wire mdout1_5_0;
    wire mdout1_4_0;
    wire mdout1_3_0;
    wire mdout1_2_0;
    wire mdout1_1_0;
    wire mdout1_0_0;
    wire mdout1_7_1;
    wire mdout1_6_1;
    wire mdout1_5_1;
    wire mdout1_4_1;
    wire mdout1_3_1;
    wire mdout1_2_1;
    wire mdout1_1_1;
    wire mdout1_0_1;
    wire mdout1_7_2;
    wire mdout1_6_2;
    wire mdout1_5_2;
    wire mdout1_4_2;
    wire mdout1_3_2;
    wire mdout1_2_2;
    wire mdout1_1_2;
    wire mdout1_0_2;
    wire mdout1_7_3;
    wire mdout1_6_3;
    wire mdout1_5_3;
    wire mdout1_4_3;
    wire mdout1_3_3;
    wire mdout1_2_3;
    wire mdout1_1_3;
    wire mdout1_0_3;
    wire mdout1_7_4;
    wire mdout1_6_4;
    wire mdout1_5_4;
    wire mdout1_4_4;
    wire mdout1_3_4;
    wire mdout1_2_4;
    wire mdout1_1_4;
    wire mdout1_0_4;
    wire mdout1_7_5;
    wire mdout1_6_5;
    wire mdout1_5_5;
    wire mdout1_4_5;
    wire mdout1_3_5;
    wire mdout1_2_5;
    wire mdout1_1_5;
    wire mdout1_0_5;
    wire mdout1_7_6;
    wire mdout1_6_6;
    wire mdout1_5_6;
    wire mdout1_4_6;
    wire mdout1_3_6;
    wire mdout1_2_6;
    wire mdout1_1_6;
    wire mdout1_0_6;
    wire mdout1_7_7;
    wire mdout1_6_7;
    wire mdout1_5_7;
    wire mdout1_4_7;
    wire mdout1_3_7;
    wire mdout1_2_7;
    wire mdout1_1_7;
    wire mdout1_0_7;
    wire mdout1_7_8;
    wire mdout1_6_8;
    wire mdout1_5_8;
    wire mdout1_4_8;
    wire mdout1_3_8;
    wire mdout1_2_8;
    wire mdout1_1_8;
    wire mdout1_0_8;
    wire mdout1_7_9;
    wire mdout1_6_9;
    wire mdout1_5_9;
    wire mdout1_4_9;
    wire mdout1_3_9;
    wire mdout1_2_9;
    wire mdout1_1_9;
    wire mdout1_0_9;
    wire mdout1_7_10;
    wire mdout1_6_10;
    wire mdout1_5_10;
    wire mdout1_4_10;
    wire mdout1_3_10;
    wire mdout1_2_10;
    wire mdout1_1_10;
    wire mdout1_0_10;
    wire mdout1_7_11;
    wire mdout1_6_11;
    wire mdout1_5_11;
    wire mdout1_4_11;
    wire mdout1_3_11;
    wire mdout1_2_11;
    wire mdout1_1_11;
    wire mdout1_0_11;
    wire mdout1_7_12;
    wire mdout1_6_12;
    wire mdout1_5_12;
    wire mdout1_4_12;
    wire mdout1_3_12;
    wire mdout1_2_12;
    wire mdout1_1_12;
    wire mdout1_0_12;
    wire mdout1_7_13;
    wire mdout1_6_13;
    wire mdout1_5_13;
    wire mdout1_4_13;
    wire mdout1_3_13;
    wire mdout1_2_13;
    wire mdout1_1_13;
    wire mdout1_0_13;
    wire mdout1_7_14;
    wire mdout1_6_14;
    wire mdout1_5_14;
    wire mdout1_4_14;
    wire mdout1_3_14;
    wire mdout1_2_14;
    wire mdout1_1_14;
    wire mdout1_0_14;
    wire mdout1_7_15;
    wire mdout1_6_15;
    wire mdout1_5_15;
    wire mdout1_4_15;
    wire mdout1_3_15;
    wire mdout1_2_15;
    wire mdout1_1_15;
    wire mdout1_0_15;
    wire raddr12_ff2;
    wire raddr11_ff2;
    wire raddr10_ff2;
    wire mdout1_7_16;
    wire mdout1_6_16;
    wire mdout1_5_16;
    wire mdout1_4_16;
    wire mdout1_3_16;
    wire mdout1_2_16;
    wire mdout1_1_16;
    wire mdout1_0_16;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_0_8), .DOB7(mdout1_0_7), 
        .DOB6(mdout1_0_6), .DOB5(mdout1_0_5), .DOB4(mdout1_0_4), .DOB3(mdout1_0_3), 
        .DOB2(mdout1_0_2), .DOB1(mdout1_0_1), .DOB0(mdout1_0_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_0_16), .DOB6(mdout1_0_15), 
        .DOB5(mdout1_0_14), .DOB4(mdout1_0_13), .DOB3(mdout1_0_12), .DOB2(mdout1_0_11), 
        .DOB1(mdout1_0_10), .DOB0(mdout1_0_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_1_8), .DOB7(mdout1_1_7), 
        .DOB6(mdout1_1_6), .DOB5(mdout1_1_5), .DOB4(mdout1_1_4), .DOB3(mdout1_1_3), 
        .DOB2(mdout1_1_2), .DOB1(mdout1_1_1), .DOB0(mdout1_1_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_1_16), .DOB6(mdout1_1_15), 
        .DOB5(mdout1_1_14), .DOB4(mdout1_1_13), .DOB3(mdout1_1_12), .DOB2(mdout1_1_11), 
        .DOB1(mdout1_1_10), .DOB0(mdout1_1_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_2_8), .DOB7(mdout1_2_7), 
        .DOB6(mdout1_2_6), .DOB5(mdout1_2_5), .DOB4(mdout1_2_4), .DOB3(mdout1_2_3), 
        .DOB2(mdout1_2_2), .DOB1(mdout1_2_1), .DOB0(mdout1_2_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.CSDECODE_B = "0b010" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.CSDECODE_A = "0b010" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_2_16), .DOB6(mdout1_2_15), 
        .DOB5(mdout1_2_14), .DOB4(mdout1_2_13), .DOB3(mdout1_2_12), .DOB2(mdout1_2_11), 
        .DOB1(mdout1_2_10), .DOB0(mdout1_2_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_3_8), .DOB7(mdout1_3_7), 
        .DOB6(mdout1_3_6), .DOB5(mdout1_3_5), .DOB4(mdout1_3_4), .DOB3(mdout1_3_3), 
        .DOB2(mdout1_3_2), .DOB1(mdout1_3_1), .DOB0(mdout1_3_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.CSDECODE_B = "0b011" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.CSDECODE_A = "0b011" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_3_16), .DOB6(mdout1_3_15), 
        .DOB5(mdout1_3_14), .DOB4(mdout1_3_13), .DOB3(mdout1_3_12), .DOB2(mdout1_3_11), 
        .DOB1(mdout1_3_10), .DOB0(mdout1_3_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.CSDECODE_B = "0b100" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.CSDECODE_A = "0b100" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_4_8), .DOB7(mdout1_4_7), 
        .DOB6(mdout1_4_6), .DOB5(mdout1_4_5), .DOB4(mdout1_4_4), .DOB3(mdout1_4_3), 
        .DOB2(mdout1_4_2), .DOB1(mdout1_4_1), .DOB0(mdout1_4_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.CSDECODE_B = "0b100" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.CSDECODE_A = "0b100" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_4_16), .DOB6(mdout1_4_15), 
        .DOB5(mdout1_4_14), .DOB4(mdout1_4_13), .DOB3(mdout1_4_12), .DOB2(mdout1_4_11), 
        .DOB1(mdout1_4_10), .DOB0(mdout1_4_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.CSDECODE_B = "0b101" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.CSDECODE_A = "0b101" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_5_8), .DOB7(mdout1_5_7), 
        .DOB6(mdout1_5_6), .DOB5(mdout1_5_5), .DOB4(mdout1_5_4), .DOB3(mdout1_5_3), 
        .DOB2(mdout1_5_2), .DOB1(mdout1_5_1), .DOB0(mdout1_5_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.CSDECODE_B = "0b101" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.CSDECODE_A = "0b101" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_5_16), .DOB6(mdout1_5_15), 
        .DOB5(mdout1_5_14), .DOB4(mdout1_5_13), .DOB3(mdout1_5_12), .DOB2(mdout1_5_11), 
        .DOB1(mdout1_5_10), .DOB0(mdout1_5_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.CSDECODE_B = "0b110" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.CSDECODE_A = "0b110" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_6_8), .DOB7(mdout1_6_7), 
        .DOB6(mdout1_6_6), .DOB5(mdout1_6_5), .DOB4(mdout1_6_4), .DOB3(mdout1_6_3), 
        .DOB2(mdout1_6_2), .DOB1(mdout1_6_1), .DOB0(mdout1_6_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.CSDECODE_B = "0b110" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.CSDECODE_A = "0b110" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_6_16), .DOB6(mdout1_6_15), 
        .DOB5(mdout1_6_14), .DOB4(mdout1_6_13), .DOB3(mdout1_6_12), .DOB2(mdout1_6_11), 
        .DOB1(mdout1_6_10), .DOB0(mdout1_6_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.CSDECODE_A = "0b111" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(mdout1_7_8), .DOB7(mdout1_7_7), 
        .DOB6(mdout1_7_6), .DOB5(mdout1_7_5), .DOB4(mdout1_7_4), .DOB3(mdout1_7_3), 
        .DOB2(mdout1_7_2), .DOB1(mdout1_7_1), .DOB0(mdout1_7_0))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.CSDECODE_B = "0b111" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.CSDECODE_A = "0b111" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0 (.DIA8(scuba_vlo), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(WrAddress[12]), .CSA1(WrAddress[11]), 
        .CSA0(WrAddress[10]), .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), 
        .DIB6(scuba_vlo), .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), 
        .DIB2(scuba_vlo), .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), 
        .ADB11(RdAddress[8]), .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), 
        .ADB8(RdAddress[5]), .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), 
        .ADB4(RdAddress[1]), .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), 
        .ADB0(scuba_vlo), .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), 
        .WEB(scuba_vlo), .CSB2(RdAddress[12]), .CSB1(RdAddress[11]), .CSB0(RdAddress[10]), 
        .RSTB(Reset), .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), 
        .DOA2(), .DOA1(), .DOA0(), .DOB8(), .DOB7(mdout1_7_16), .DOB6(mdout1_7_15), 
        .DOB5(mdout1_7_14), .DOB4(mdout1_7_13), .DOB3(mdout1_7_12), .DOB2(mdout1_7_11), 
        .DOB1(mdout1_7_10), .DOB0(mdout1_7_9))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_5 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_4 (.D(RdAddress[11]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_3 (.D(RdAddress[12]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr12_ff))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_2 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    FD1P3DX FF_1 (.D(raddr11_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr11_ff2))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr12_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr12_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX81 mux_16 (.D0(mdout1_0_0), .D1(mdout1_1_0), .D2(mdout1_2_0), .D3(mdout1_3_0), 
        .D4(mdout1_4_0), .D5(mdout1_5_0), .D6(mdout1_6_0), .D7(mdout1_7_0), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[0]));

    MUX81 mux_15 (.D0(mdout1_0_1), .D1(mdout1_1_1), .D2(mdout1_2_1), .D3(mdout1_3_1), 
        .D4(mdout1_4_1), .D5(mdout1_5_1), .D6(mdout1_6_1), .D7(mdout1_7_1), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[1]));

    MUX81 mux_14 (.D0(mdout1_0_2), .D1(mdout1_1_2), .D2(mdout1_2_2), .D3(mdout1_3_2), 
        .D4(mdout1_4_2), .D5(mdout1_5_2), .D6(mdout1_6_2), .D7(mdout1_7_2), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[2]));

    MUX81 mux_13 (.D0(mdout1_0_3), .D1(mdout1_1_3), .D2(mdout1_2_3), .D3(mdout1_3_3), 
        .D4(mdout1_4_3), .D5(mdout1_5_3), .D6(mdout1_6_3), .D7(mdout1_7_3), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[3]));

    MUX81 mux_12 (.D0(mdout1_0_4), .D1(mdout1_1_4), .D2(mdout1_2_4), .D3(mdout1_3_4), 
        .D4(mdout1_4_4), .D5(mdout1_5_4), .D6(mdout1_6_4), .D7(mdout1_7_4), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[4]));

    MUX81 mux_11 (.D0(mdout1_0_5), .D1(mdout1_1_5), .D2(mdout1_2_5), .D3(mdout1_3_5), 
        .D4(mdout1_4_5), .D5(mdout1_5_5), .D6(mdout1_6_5), .D7(mdout1_7_5), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[5]));

    MUX81 mux_10 (.D0(mdout1_0_6), .D1(mdout1_1_6), .D2(mdout1_2_6), .D3(mdout1_3_6), 
        .D4(mdout1_4_6), .D5(mdout1_5_6), .D6(mdout1_6_6), .D7(mdout1_7_6), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[6]));

    MUX81 mux_9 (.D0(mdout1_0_7), .D1(mdout1_1_7), .D2(mdout1_2_7), .D3(mdout1_3_7), 
        .D4(mdout1_4_7), .D5(mdout1_5_7), .D6(mdout1_6_7), .D7(mdout1_7_7), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[7]));

    MUX81 mux_8 (.D0(mdout1_0_8), .D1(mdout1_1_8), .D2(mdout1_2_8), .D3(mdout1_3_8), 
        .D4(mdout1_4_8), .D5(mdout1_5_8), .D6(mdout1_6_8), .D7(mdout1_7_8), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[8]));

    MUX81 mux_7 (.D0(mdout1_0_9), .D1(mdout1_1_9), .D2(mdout1_2_9), .D3(mdout1_3_9), 
        .D4(mdout1_4_9), .D5(mdout1_5_9), .D6(mdout1_6_9), .D7(mdout1_7_9), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[9]));

    MUX81 mux_6 (.D0(mdout1_0_10), .D1(mdout1_1_10), .D2(mdout1_2_10), .D3(mdout1_3_10), 
        .D4(mdout1_4_10), .D5(mdout1_5_10), .D6(mdout1_6_10), .D7(mdout1_7_10), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[10]));

    MUX81 mux_5 (.D0(mdout1_0_11), .D1(mdout1_1_11), .D2(mdout1_2_11), .D3(mdout1_3_11), 
        .D4(mdout1_4_11), .D5(mdout1_5_11), .D6(mdout1_6_11), .D7(mdout1_7_11), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[11]));

    MUX81 mux_4 (.D0(mdout1_0_12), .D1(mdout1_1_12), .D2(mdout1_2_12), .D3(mdout1_3_12), 
        .D4(mdout1_4_12), .D5(mdout1_5_12), .D6(mdout1_6_12), .D7(mdout1_7_12), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[12]));

    MUX81 mux_3 (.D0(mdout1_0_13), .D1(mdout1_1_13), .D2(mdout1_2_13), .D3(mdout1_3_13), 
        .D4(mdout1_4_13), .D5(mdout1_5_13), .D6(mdout1_6_13), .D7(mdout1_7_13), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[13]));

    MUX81 mux_2 (.D0(mdout1_0_14), .D1(mdout1_1_14), .D2(mdout1_2_14), .D3(mdout1_3_14), 
        .D4(mdout1_4_14), .D5(mdout1_5_14), .D6(mdout1_6_14), .D7(mdout1_7_14), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[14]));

    MUX81 mux_1 (.D0(mdout1_0_15), .D1(mdout1_1_15), .D2(mdout1_2_15), .D3(mdout1_3_15), 
        .D4(mdout1_4_15), .D5(mdout1_5_15), .D6(mdout1_6_15), .D7(mdout1_7_15), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[15]));

    MUX81 mux_0 (.D0(mdout1_0_16), .D1(mdout1_1_16), .D2(mdout1_2_16), .D3(mdout1_3_16), 
        .D4(mdout1_4_16), .D5(mdout1_5_16), .D6(mdout1_6_16), .D7(mdout1_7_16), 
        .SD1(raddr10_ff2), .SD2(raddr11_ff2), .SD3(raddr12_ff2), .Z(Q[16]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_0_0_15 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_0_1_14 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_1_0_13 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_1_1_12 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_2_0_11 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_2_1_10 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_3_0_9 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_3_1_8 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_4_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_4_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_5_0_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_5_1_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_6_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_6_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_7_0_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr171381921713819212194b45__PMIP__8192__17__17B
    // exemplar attribute pmi_ram_dpLbnonesadr171381921713819212194b45_7_1_0 MEM_INIT_FILE 
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 14:57:31 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 34 -num_rows 2048 -rdata_width 34 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr34112048341120481218fdac -pmi -lang verilog  */
/* Mon Jul 14 14:57:31 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr34112048341120481218fdac (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [33:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [33:0] Q;

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
    wire mdout1_1_32;
    wire mdout1_0_32;
    wire raddr10_ff2;
    wire mdout1_1_33;
    wire mdout1_0_33;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 (.DIA8(Data[26]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
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
        .DOA0(), .DOB8(), .DOB7(), .DOB6(mdout1_0_33), .DOB5(mdout1_0_32), 
        .DOB4(mdout1_0_31), .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), 
        .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 (.DIA8(Data[26]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
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
        .DOA0(), .DOB8(), .DOB7(), .DOB6(mdout1_1_33), .DOB5(mdout1_1_32), 
        .DOB4(mdout1_1_31), .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), 
        .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_33 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_32 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_31 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_30 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_29 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_28 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_27 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_26 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_25 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_24 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_23 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_22 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_21 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_20 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_19 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_18 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_17 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_16 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_15 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_14 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_13 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_12 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_11 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_10 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), 
        .Z(Q[23]));

    MUX21 mux_9 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_8 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_7 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_6 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_5 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_4 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_3 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_2 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_1 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));

    MUX21 mux_0 (.D0(mdout1_0_33), .D1(mdout1_1_33), .SD(raddr10_ff2), .Z(Q[33]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 15:02:03 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 34 -num_rows 2048 -rdata_width 34 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr34112048341120481218fdac -pmi -lang verilog  */
/* Mon Jul 14 15:02:03 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr34112048341120481218fdac (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [10:0] WrAddress;
    input wire [10:0] RdAddress;
    input wire [33:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [33:0] Q;

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
    wire mdout1_1_32;
    wire mdout1_0_32;
    wire raddr10_ff2;
    wire mdout1_1_33;
    wire mdout1_0_33;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 (.DIA8(Data[26]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
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
        .DOA0(), .DOB8(), .DOB7(), .DOB6(mdout1_0_33), .DOB5(mdout1_0_32), 
        .DOB4(mdout1_0_31), .DOB3(mdout1_0_30), .DOB2(mdout1_0_29), .DOB1(mdout1_0_28), 
        .DOB0(mdout1_0_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 (.DIA8(Data[8]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 (.DIA8(Data[17]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 (.DIA8(Data[26]), 
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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.CSDECODE_B = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.CSDECODE_A = "0b001" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
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
        .DOA0(), .DOB8(), .DOB7(), .DOB6(mdout1_1_33), .DOB5(mdout1_1_32), 
        .DOB4(mdout1_1_31), .DOB3(mdout1_1_30), .DOB2(mdout1_1_29), .DOB1(mdout1_1_28), 
        .DOB0(mdout1_1_27))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    FD1P3DX FF_1 (.D(RdAddress[10]), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff))
             /* synthesis GSR="ENABLED" */;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FD1P3DX FF_0 (.D(raddr10_ff), .SP(RdClockEn), .CK(RdClock), .CD(scuba_vlo), 
        .Q(raddr10_ff2))
             /* synthesis GSR="ENABLED" */;

    MUX21 mux_33 (.D0(mdout1_0_0), .D1(mdout1_1_0), .SD(raddr10_ff2), .Z(Q[0]));

    MUX21 mux_32 (.D0(mdout1_0_1), .D1(mdout1_1_1), .SD(raddr10_ff2), .Z(Q[1]));

    MUX21 mux_31 (.D0(mdout1_0_2), .D1(mdout1_1_2), .SD(raddr10_ff2), .Z(Q[2]));

    MUX21 mux_30 (.D0(mdout1_0_3), .D1(mdout1_1_3), .SD(raddr10_ff2), .Z(Q[3]));

    MUX21 mux_29 (.D0(mdout1_0_4), .D1(mdout1_1_4), .SD(raddr10_ff2), .Z(Q[4]));

    MUX21 mux_28 (.D0(mdout1_0_5), .D1(mdout1_1_5), .SD(raddr10_ff2), .Z(Q[5]));

    MUX21 mux_27 (.D0(mdout1_0_6), .D1(mdout1_1_6), .SD(raddr10_ff2), .Z(Q[6]));

    MUX21 mux_26 (.D0(mdout1_0_7), .D1(mdout1_1_7), .SD(raddr10_ff2), .Z(Q[7]));

    MUX21 mux_25 (.D0(mdout1_0_8), .D1(mdout1_1_8), .SD(raddr10_ff2), .Z(Q[8]));

    MUX21 mux_24 (.D0(mdout1_0_9), .D1(mdout1_1_9), .SD(raddr10_ff2), .Z(Q[9]));

    MUX21 mux_23 (.D0(mdout1_0_10), .D1(mdout1_1_10), .SD(raddr10_ff2), 
        .Z(Q[10]));

    MUX21 mux_22 (.D0(mdout1_0_11), .D1(mdout1_1_11), .SD(raddr10_ff2), 
        .Z(Q[11]));

    MUX21 mux_21 (.D0(mdout1_0_12), .D1(mdout1_1_12), .SD(raddr10_ff2), 
        .Z(Q[12]));

    MUX21 mux_20 (.D0(mdout1_0_13), .D1(mdout1_1_13), .SD(raddr10_ff2), 
        .Z(Q[13]));

    MUX21 mux_19 (.D0(mdout1_0_14), .D1(mdout1_1_14), .SD(raddr10_ff2), 
        .Z(Q[14]));

    MUX21 mux_18 (.D0(mdout1_0_15), .D1(mdout1_1_15), .SD(raddr10_ff2), 
        .Z(Q[15]));

    MUX21 mux_17 (.D0(mdout1_0_16), .D1(mdout1_1_16), .SD(raddr10_ff2), 
        .Z(Q[16]));

    MUX21 mux_16 (.D0(mdout1_0_17), .D1(mdout1_1_17), .SD(raddr10_ff2), 
        .Z(Q[17]));

    MUX21 mux_15 (.D0(mdout1_0_18), .D1(mdout1_1_18), .SD(raddr10_ff2), 
        .Z(Q[18]));

    MUX21 mux_14 (.D0(mdout1_0_19), .D1(mdout1_1_19), .SD(raddr10_ff2), 
        .Z(Q[19]));

    MUX21 mux_13 (.D0(mdout1_0_20), .D1(mdout1_1_20), .SD(raddr10_ff2), 
        .Z(Q[20]));

    MUX21 mux_12 (.D0(mdout1_0_21), .D1(mdout1_1_21), .SD(raddr10_ff2), 
        .Z(Q[21]));

    MUX21 mux_11 (.D0(mdout1_0_22), .D1(mdout1_1_22), .SD(raddr10_ff2), 
        .Z(Q[22]));

    MUX21 mux_10 (.D0(mdout1_0_23), .D1(mdout1_1_23), .SD(raddr10_ff2), 
        .Z(Q[23]));

    MUX21 mux_9 (.D0(mdout1_0_24), .D1(mdout1_1_24), .SD(raddr10_ff2), .Z(Q[24]));

    MUX21 mux_8 (.D0(mdout1_0_25), .D1(mdout1_1_25), .SD(raddr10_ff2), .Z(Q[25]));

    MUX21 mux_7 (.D0(mdout1_0_26), .D1(mdout1_1_26), .SD(raddr10_ff2), .Z(Q[26]));

    MUX21 mux_6 (.D0(mdout1_0_27), .D1(mdout1_1_27), .SD(raddr10_ff2), .Z(Q[27]));

    MUX21 mux_5 (.D0(mdout1_0_28), .D1(mdout1_1_28), .SD(raddr10_ff2), .Z(Q[28]));

    MUX21 mux_4 (.D0(mdout1_0_29), .D1(mdout1_1_29), .SD(raddr10_ff2), .Z(Q[29]));

    MUX21 mux_3 (.D0(mdout1_0_30), .D1(mdout1_1_30), .SD(raddr10_ff2), .Z(Q[30]));

    MUX21 mux_2 (.D0(mdout1_0_31), .D1(mdout1_1_31), .SD(raddr10_ff2), .Z(Q[31]));

    MUX21 mux_1 (.D0(mdout1_0_32), .D1(mdout1_1_32), .SD(raddr10_ff2), .Z(Q[32]));

    MUX21 mux_0 (.D0(mdout1_0_33), .D1(mdout1_1_33), .SD(raddr10_ff2), .Z(Q[33]));



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr34112048341120481218fdac__PMIP__2048__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34112048341120481218fdac_1_3_0 MEM_INIT_FILE 
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 15:05:08 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 34 -num_rows 1024 -rdata_width 34 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr34101024341010241218bb12 -pmi -lang verilog  */
/* Mon Jul 14 15:05:08 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr34101024341010241218bb12 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [33:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [33:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(Q[33]), .DOB5(Q[32]), .DOB4(Q[31]), 
        .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_0_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_1_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_2_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr34101024341010241218bb12__PMIP__1024__34__34B
    // exemplar attribute pmi_ram_dpLbnonesadr34101024341010241218bb12_0_3_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Mon Jul 14 15:29:42 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 68 -num_rows 1024 -rdata_width 68 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr68101024681010241218f722 -pmi -lang verilog  */
/* Mon Jul 14 15:29:42 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr68101024681010241218f722 (WrAddress, 
    RdAddress, Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, 
    Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [9:0] WrAddress;
    input wire [9:0] RdAddress;
    input wire [67:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [67:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7 (.DIA8(Data[8]), 
        .DIA7(Data[7]), .DIA6(Data[6]), .DIA5(Data[5]), .DIA4(Data[4]), 
        .DIA3(Data[3]), .DIA2(Data[2]), .DIA1(Data[1]), .DIA0(Data[0]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[8]), .DOB7(Q[7]), .DOB6(Q[6]), .DOB5(Q[5]), .DOB4(Q[4]), 
        .DOB3(Q[3]), .DOB2(Q[2]), .DOB1(Q[1]), .DOB0(Q[0]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6 (.DIA8(Data[17]), 
        .DIA7(Data[16]), .DIA6(Data[15]), .DIA5(Data[14]), .DIA4(Data[13]), 
        .DIA3(Data[12]), .DIA2(Data[11]), .DIA1(Data[10]), .DIA0(Data[9]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[17]), .DOB7(Q[16]), .DOB6(Q[15]), .DOB5(Q[14]), 
        .DOB4(Q[13]), .DOB3(Q[12]), .DOB2(Q[11]), .DOB1(Q[10]), .DOB0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5 (.DIA8(Data[26]), 
        .DIA7(Data[25]), .DIA6(Data[24]), .DIA5(Data[23]), .DIA4(Data[22]), 
        .DIA3(Data[21]), .DIA2(Data[20]), .DIA1(Data[19]), .DIA0(Data[18]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[26]), .DOB7(Q[25]), .DOB6(Q[24]), .DOB5(Q[23]), 
        .DOB4(Q[22]), .DOB3(Q[21]), .DOB2(Q[20]), .DOB1(Q[19]), .DOB0(Q[18]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4 (.DIA8(Data[35]), 
        .DIA7(Data[34]), .DIA6(Data[33]), .DIA5(Data[32]), .DIA4(Data[31]), 
        .DIA3(Data[30]), .DIA2(Data[29]), .DIA1(Data[28]), .DIA0(Data[27]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[35]), .DOB7(Q[34]), .DOB6(Q[33]), .DOB5(Q[32]), 
        .DOB4(Q[31]), .DOB3(Q[30]), .DOB2(Q[29]), .DOB1(Q[28]), .DOB0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3 (.DIA8(Data[44]), 
        .DIA7(Data[43]), .DIA6(Data[42]), .DIA5(Data[41]), .DIA4(Data[40]), 
        .DIA3(Data[39]), .DIA2(Data[38]), .DIA1(Data[37]), .DIA0(Data[36]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[44]), .DOB7(Q[43]), .DOB6(Q[42]), .DOB5(Q[41]), 
        .DOB4(Q[40]), .DOB3(Q[39]), .DOB2(Q[38]), .DOB1(Q[37]), .DOB0(Q[36]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2 (.DIA8(Data[53]), 
        .DIA7(Data[52]), .DIA6(Data[51]), .DIA5(Data[50]), .DIA4(Data[49]), 
        .DIA3(Data[48]), .DIA2(Data[47]), .DIA1(Data[46]), .DIA0(Data[45]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[53]), .DOB7(Q[52]), .DOB6(Q[51]), .DOB5(Q[50]), 
        .DOB4(Q[49]), .DOB3(Q[48]), .DOB2(Q[47]), .DOB1(Q[46]), .DOB0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1 (.DIA8(Data[62]), 
        .DIA7(Data[61]), .DIA6(Data[60]), .DIA5(Data[59]), .DIA4(Data[58]), 
        .DIA3(Data[57]), .DIA2(Data[56]), .DIA1(Data[55]), .DIA0(Data[54]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(Q[62]), .DOB7(Q[61]), .DOB6(Q[60]), .DOB5(Q[59]), 
        .DOB4(Q[58]), .DOB3(Q[57]), .DOB2(Q[56]), .DOB1(Q[55]), .DOB0(Q[54]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.CSDECODE_B = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.CSDECODE_A = "0b000" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.WRITEMODE_B = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.WRITEMODE_A = "NORMAL" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.REGMODE_B = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.REGMODE_A = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.DATA_WIDTH_B = 9 ;
    defparam pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0.DATA_WIDTH_A = 9 ;
    DP8KE pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0 (.DIA8(scuba_vlo), 
        .DIA7(scuba_vlo), .DIA6(scuba_vlo), .DIA5(scuba_vlo), .DIA4(Data[67]), 
        .DIA3(Data[66]), .DIA2(Data[65]), .DIA1(Data[64]), .DIA0(Data[63]), 
        .ADA12(WrAddress[9]), .ADA11(WrAddress[8]), .ADA10(WrAddress[7]), 
        .ADA9(WrAddress[6]), .ADA8(WrAddress[5]), .ADA7(WrAddress[4]), .ADA6(WrAddress[3]), 
        .ADA5(WrAddress[2]), .ADA4(WrAddress[1]), .ADA3(WrAddress[0]), .ADA2(scuba_vlo), 
        .ADA1(scuba_vlo), .ADA0(scuba_vhi), .CEA(WrClockEn), .OCEA(WrClockEn), 
        .CLKA(WrClock), .WEA(WE), .CSA2(scuba_vlo), .CSA1(scuba_vlo), .CSA0(scuba_vlo), 
        .RSTA(Reset), .DIB8(scuba_vlo), .DIB7(scuba_vlo), .DIB6(scuba_vlo), 
        .DIB5(scuba_vlo), .DIB4(scuba_vlo), .DIB3(scuba_vlo), .DIB2(scuba_vlo), 
        .DIB1(scuba_vlo), .DIB0(scuba_vlo), .ADB12(RdAddress[9]), .ADB11(RdAddress[8]), 
        .ADB10(RdAddress[7]), .ADB9(RdAddress[6]), .ADB8(RdAddress[5]), 
        .ADB7(RdAddress[4]), .ADB6(RdAddress[3]), .ADB5(RdAddress[2]), .ADB4(RdAddress[1]), 
        .ADB3(RdAddress[0]), .ADB2(scuba_vlo), .ADB1(scuba_vlo), .ADB0(scuba_vlo), 
        .CEB(RdClockEn), .OCEB(RdClockEn), .CLKB(RdClock), .WEB(scuba_vlo), 
        .CSB2(scuba_vlo), .CSB1(scuba_vlo), .CSB0(scuba_vlo), .RSTB(Reset), 
        .DOA8(), .DOA7(), .DOA6(), .DOA5(), .DOA4(), .DOA3(), .DOA2(), .DOA1(), 
        .DOA0(), .DOB8(), .DOB7(), .DOB6(), .DOB5(), .DOB4(Q[67]), .DOB3(Q[66]), 
        .DOB2(Q[65]), .DOB1(Q[64]), .DOB0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_4_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_5_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_6_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr68101024681010241218f722__PMIP__1024__68__68B
    // exemplar attribute pmi_ram_dpLbnonesadr68101024681010241218f722_0_7_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 15 01:31:45 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 136 -num_rows 512 -rdata_width 136 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1369512136951211f53696 -pmi -lang verilog  */
/* Tue Jul 15 01:31:45 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1369512136951211f53696 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [135:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [135:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2 (.DI17(Data[107]), 
        .DI16(Data[106]), .DI15(Data[105]), .DI14(Data[104]), .DI13(Data[103]), 
        .DI12(Data[102]), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(Q[107]), .DO7(Q[106]), .DO6(Q[105]), .DO5(Q[104]), .DO4(Q[103]), 
        .DO3(Q[102]), .DO2(Q[101]), .DO1(Q[100]), .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1 (.DI17(Data[125]), 
        .DI16(Data[124]), .DI15(Data[123]), .DI14(Data[122]), .DI13(Data[121]), 
        .DI12(Data[120]), .DI11(Data[119]), .DI10(Data[118]), .DI9(Data[117]), 
        .DI8(Data[116]), .DI7(Data[115]), .DI6(Data[114]), .DI5(Data[113]), 
        .DI4(Data[112]), .DI3(Data[111]), .DI2(Data[110]), .DI1(Data[109]), 
        .DI0(Data[108]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[116]), .DO16(Q[115]), .DO15(Q[114]), .DO14(Q[113]), 
        .DO13(Q[112]), .DO12(Q[111]), .DO11(Q[110]), .DO10(Q[109]), .DO9(Q[108]), 
        .DO8(Q[125]), .DO7(Q[124]), .DO6(Q[123]), .DO5(Q[122]), .DO4(Q[121]), 
        .DO3(Q[120]), .DO2(Q[119]), .DO1(Q[118]), .DO0(Q[117]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(scuba_vlo), .DI9(Data[135]), 
        .DI8(Data[134]), .DI7(Data[133]), .DI6(Data[132]), .DI5(Data[131]), 
        .DI4(Data[130]), .DI3(Data[129]), .DI2(Data[128]), .DI1(Data[127]), 
        .DI0(Data[126]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[134]), .DO16(Q[133]), .DO15(Q[132]), .DO14(Q[131]), 
        .DO13(Q[130]), .DO12(Q[129]), .DO11(Q[128]), .DO10(Q[127]), .DO9(Q[126]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(), .DO1(), 
        .DO0(Q[135]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_4_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_5_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_6_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1369512136951211f53696__PMIP__512__136__136B
    // exemplar attribute pmi_ram_dpLbnonesadr1369512136951211f53696_0_7_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 15 02:04:37 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 137 -num_rows 512 -rdata_width 137 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1379512137951211f54079 -pmi -lang verilog  */
/* Tue Jul 15 02:04:37 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1379512137951211f54079 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [136:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [136:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 (.DI17(Data[107]), 
        .DI16(Data[106]), .DI15(Data[105]), .DI14(Data[104]), .DI13(Data[103]), 
        .DI12(Data[102]), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(Q[107]), .DO7(Q[106]), .DO6(Q[105]), .DO5(Q[104]), .DO4(Q[103]), 
        .DO3(Q[102]), .DO2(Q[101]), .DO1(Q[100]), .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 (.DI17(Data[125]), 
        .DI16(Data[124]), .DI15(Data[123]), .DI14(Data[122]), .DI13(Data[121]), 
        .DI12(Data[120]), .DI11(Data[119]), .DI10(Data[118]), .DI9(Data[117]), 
        .DI8(Data[116]), .DI7(Data[115]), .DI6(Data[114]), .DI5(Data[113]), 
        .DI4(Data[112]), .DI3(Data[111]), .DI2(Data[110]), .DI1(Data[109]), 
        .DI0(Data[108]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[116]), .DO16(Q[115]), .DO15(Q[114]), .DO14(Q[113]), 
        .DO13(Q[112]), .DO12(Q[111]), .DO11(Q[110]), .DO10(Q[109]), .DO9(Q[108]), 
        .DO8(Q[125]), .DO7(Q[124]), .DO6(Q[123]), .DO5(Q[122]), .DO4(Q[121]), 
        .DO3(Q[120]), .DO2(Q[119]), .DO1(Q[118]), .DO0(Q[117]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(Data[136]), .DI9(Data[135]), 
        .DI8(Data[134]), .DI7(Data[133]), .DI6(Data[132]), .DI5(Data[131]), 
        .DI4(Data[130]), .DI3(Data[129]), .DI2(Data[128]), .DI1(Data[127]), 
        .DI0(Data[126]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[134]), .DO16(Q[133]), .DO15(Q[132]), .DO14(Q[131]), 
        .DO13(Q[130]), .DO12(Q[129]), .DO11(Q[128]), .DO10(Q[127]), .DO9(Q[126]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(), .DO1(Q[136]), 
        .DO0(Q[135]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 1 -num_rows 2 -rdata_width 1 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1121121164d4da -pmi -lang verilog  */
/* Tue Jul 15 02:06:12 2025 */


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
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1121121164d4da__PMIP__2__1__1B
    // exemplar attribute pmi_ram_dpLbnonesadr1121121164d4da_0_0_0 MEM_INIT_FILE 
    // exemplar end

endmodule
/* Verilog netlist generated by SCUBA Diamond (64-bit) 3.12.0.240.2 */
/* Module Version: 6.5 */
/* C:/lscc/diamond/3.12/ispfpga/bin/nt64/scuba -w -bus_exp 7 -bb -arch sn5w00 -type bram -wp 10 -rp 0011 -data_width 137 -num_rows 512 -rdata_width 137 -read_reg1 outreg -gsr DISABLED -reset_rel async -memformat bin -cascade -1 -n pmi_ram_dpLbnonesadr1379512137951211f54079 -pmi -lang verilog  */
/* Tue Jul 15 02:06:11 2025 */


`timescale 1 ns / 1 ps
module pmi_ram_dpLbnonesadr1379512137951211f54079 (WrAddress, RdAddress, 
    Data, WE, RdClock, RdClockEn, Reset, WrClock, WrClockEn, Q)/* synthesis NGD_DRC_MASK=1 */;
    input wire [8:0] WrAddress;
    input wire [8:0] RdAddress;
    input wire [136:0] Data;
    input wire WE;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    input wire WrClock;
    input wire WrClockEn;
    output wire [136:0] Q;

    wire scuba_vhi;
    wire scuba_vlo;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 (.DI17(Data[17]), 
        .DI16(Data[16]), .DI15(Data[15]), .DI14(Data[14]), .DI13(Data[13]), 
        .DI12(Data[12]), .DI11(Data[11]), .DI10(Data[10]), .DI9(Data[9]), 
        .DI8(Data[8]), .DI7(Data[7]), .DI6(Data[6]), .DI5(Data[5]), .DI4(Data[4]), 
        .DI3(Data[3]), .DI2(Data[2]), .DI1(Data[1]), .DI0(Data[0]), .ADW8(WrAddress[8]), 
        .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), 
        .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), 
        .BE1(scuba_vhi), .BE0(scuba_vhi), .CEW(WrClockEn), .CLKW(WrClock), 
        .CSW2(scuba_vlo), .CSW1(scuba_vlo), .CSW0(WE), .ADR12(RdAddress[8]), 
        .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), .ADR9(RdAddress[5]), 
        .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), .ADR5(RdAddress[1]), 
        .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), .ADR1(scuba_vlo), 
        .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), .CLKR(RdClock), 
        .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), .RST(Reset), 
        .DO17(Q[8]), .DO16(Q[7]), .DO15(Q[6]), .DO14(Q[5]), .DO13(Q[4]), 
        .DO12(Q[3]), .DO11(Q[2]), .DO10(Q[1]), .DO9(Q[0]), .DO8(Q[17]), 
        .DO7(Q[16]), .DO6(Q[15]), .DO5(Q[14]), .DO4(Q[13]), .DO3(Q[12]), 
        .DO2(Q[11]), .DO1(Q[10]), .DO0(Q[9]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 (.DI17(Data[35]), 
        .DI16(Data[34]), .DI15(Data[33]), .DI14(Data[32]), .DI13(Data[31]), 
        .DI12(Data[30]), .DI11(Data[29]), .DI10(Data[28]), .DI9(Data[27]), 
        .DI8(Data[26]), .DI7(Data[25]), .DI6(Data[24]), .DI5(Data[23]), 
        .DI4(Data[22]), .DI3(Data[21]), .DI2(Data[20]), .DI1(Data[19]), 
        .DI0(Data[18]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[26]), .DO16(Q[25]), .DO15(Q[24]), .DO14(Q[23]), 
        .DO13(Q[22]), .DO12(Q[21]), .DO11(Q[20]), .DO10(Q[19]), .DO9(Q[18]), 
        .DO8(Q[35]), .DO7(Q[34]), .DO6(Q[33]), .DO5(Q[32]), .DO4(Q[31]), 
        .DO3(Q[30]), .DO2(Q[29]), .DO1(Q[28]), .DO0(Q[27]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 (.DI17(Data[53]), 
        .DI16(Data[52]), .DI15(Data[51]), .DI14(Data[50]), .DI13(Data[49]), 
        .DI12(Data[48]), .DI11(Data[47]), .DI10(Data[46]), .DI9(Data[45]), 
        .DI8(Data[44]), .DI7(Data[43]), .DI6(Data[42]), .DI5(Data[41]), 
        .DI4(Data[40]), .DI3(Data[39]), .DI2(Data[38]), .DI1(Data[37]), 
        .DI0(Data[36]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[44]), .DO16(Q[43]), .DO15(Q[42]), .DO14(Q[41]), 
        .DO13(Q[40]), .DO12(Q[39]), .DO11(Q[38]), .DO10(Q[37]), .DO9(Q[36]), 
        .DO8(Q[53]), .DO7(Q[52]), .DO6(Q[51]), .DO5(Q[50]), .DO4(Q[49]), 
        .DO3(Q[48]), .DO2(Q[47]), .DO1(Q[46]), .DO0(Q[45]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 (.DI17(Data[71]), 
        .DI16(Data[70]), .DI15(Data[69]), .DI14(Data[68]), .DI13(Data[67]), 
        .DI12(Data[66]), .DI11(Data[65]), .DI10(Data[64]), .DI9(Data[63]), 
        .DI8(Data[62]), .DI7(Data[61]), .DI6(Data[60]), .DI5(Data[59]), 
        .DI4(Data[58]), .DI3(Data[57]), .DI2(Data[56]), .DI1(Data[55]), 
        .DI0(Data[54]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[62]), .DO16(Q[61]), .DO15(Q[60]), .DO14(Q[59]), 
        .DO13(Q[58]), .DO12(Q[57]), .DO11(Q[56]), .DO10(Q[55]), .DO9(Q[54]), 
        .DO8(Q[71]), .DO7(Q[70]), .DO6(Q[69]), .DO5(Q[68]), .DO4(Q[67]), 
        .DO3(Q[66]), .DO2(Q[65]), .DO1(Q[64]), .DO0(Q[63]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 (.DI17(Data[89]), 
        .DI16(Data[88]), .DI15(Data[87]), .DI14(Data[86]), .DI13(Data[85]), 
        .DI12(Data[84]), .DI11(Data[83]), .DI10(Data[82]), .DI9(Data[81]), 
        .DI8(Data[80]), .DI7(Data[79]), .DI6(Data[78]), .DI5(Data[77]), 
        .DI4(Data[76]), .DI3(Data[75]), .DI2(Data[74]), .DI1(Data[73]), 
        .DI0(Data[72]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[80]), .DO16(Q[79]), .DO15(Q[78]), .DO14(Q[77]), 
        .DO13(Q[76]), .DO12(Q[75]), .DO11(Q[74]), .DO10(Q[73]), .DO9(Q[72]), 
        .DO8(Q[89]), .DO7(Q[88]), .DO6(Q[87]), .DO5(Q[86]), .DO4(Q[85]), 
        .DO3(Q[84]), .DO2(Q[83]), .DO1(Q[82]), .DO0(Q[81]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 (.DI17(Data[107]), 
        .DI16(Data[106]), .DI15(Data[105]), .DI14(Data[104]), .DI13(Data[103]), 
        .DI12(Data[102]), .DI11(Data[101]), .DI10(Data[100]), .DI9(Data[99]), 
        .DI8(Data[98]), .DI7(Data[97]), .DI6(Data[96]), .DI5(Data[95]), 
        .DI4(Data[94]), .DI3(Data[93]), .DI2(Data[92]), .DI1(Data[91]), 
        .DI0(Data[90]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[98]), .DO16(Q[97]), .DO15(Q[96]), .DO14(Q[95]), 
        .DO13(Q[94]), .DO12(Q[93]), .DO11(Q[92]), .DO10(Q[91]), .DO9(Q[90]), 
        .DO8(Q[107]), .DO7(Q[106]), .DO6(Q[105]), .DO5(Q[104]), .DO4(Q[103]), 
        .DO3(Q[102]), .DO2(Q[101]), .DO1(Q[100]), .DO0(Q[99]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 (.DI17(Data[125]), 
        .DI16(Data[124]), .DI15(Data[123]), .DI14(Data[122]), .DI13(Data[121]), 
        .DI12(Data[120]), .DI11(Data[119]), .DI10(Data[118]), .DI9(Data[117]), 
        .DI8(Data[116]), .DI7(Data[115]), .DI6(Data[114]), .DI5(Data[113]), 
        .DI4(Data[112]), .DI3(Data[111]), .DI2(Data[110]), .DI1(Data[109]), 
        .DI0(Data[108]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[116]), .DO16(Q[115]), .DO15(Q[114]), .DO14(Q[113]), 
        .DO13(Q[112]), .DO12(Q[111]), .DO11(Q[110]), .DO10(Q[109]), .DO9(Q[108]), 
        .DO8(Q[125]), .DO7(Q[124]), .DO6(Q[123]), .DO5(Q[122]), .DO4(Q[121]), 
        .DO3(Q[120]), .DO2(Q[119]), .DO1(Q[118]), .DO0(Q[117]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.INIT_DATA = "STATIC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.ASYNC_RESET_RELEASE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.CSDECODE_R = "0b000" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.CSDECODE_W = "0b001" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.GSR = "ENABLED" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.RESETMODE = "ASYNC" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.REGMODE = "OUTREG" ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.DATA_WIDTH_R = 18 ;
    defparam pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0.DATA_WIDTH_W = 18 ;
    PDPW8KE pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 (.DI17(scuba_vlo), 
        .DI16(scuba_vlo), .DI15(scuba_vlo), .DI14(scuba_vlo), .DI13(scuba_vlo), 
        .DI12(scuba_vlo), .DI11(scuba_vlo), .DI10(Data[136]), .DI9(Data[135]), 
        .DI8(Data[134]), .DI7(Data[133]), .DI6(Data[132]), .DI5(Data[131]), 
        .DI4(Data[130]), .DI3(Data[129]), .DI2(Data[128]), .DI1(Data[127]), 
        .DI0(Data[126]), .ADW8(WrAddress[8]), .ADW7(WrAddress[7]), .ADW6(WrAddress[6]), 
        .ADW5(WrAddress[5]), .ADW4(WrAddress[4]), .ADW3(WrAddress[3]), .ADW2(WrAddress[2]), 
        .ADW1(WrAddress[1]), .ADW0(WrAddress[0]), .BE1(scuba_vhi), .BE0(scuba_vhi), 
        .CEW(WrClockEn), .CLKW(WrClock), .CSW2(scuba_vlo), .CSW1(scuba_vlo), 
        .CSW0(WE), .ADR12(RdAddress[8]), .ADR11(RdAddress[7]), .ADR10(RdAddress[6]), 
        .ADR9(RdAddress[5]), .ADR8(RdAddress[4]), .ADR7(RdAddress[3]), .ADR6(RdAddress[2]), 
        .ADR5(RdAddress[1]), .ADR4(RdAddress[0]), .ADR3(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR1(scuba_vlo), .ADR0(scuba_vlo), .CER(RdClockEn), .OCER(RdClockEn), 
        .CLKR(RdClock), .CSR2(scuba_vlo), .CSR1(scuba_vlo), .CSR0(scuba_vlo), 
        .RST(Reset), .DO17(Q[134]), .DO16(Q[133]), .DO15(Q[132]), .DO14(Q[131]), 
        .DO13(Q[130]), .DO12(Q[129]), .DO11(Q[128]), .DO10(Q[127]), .DO9(Q[126]), 
        .DO8(), .DO7(), .DO6(), .DO5(), .DO4(), .DO3(), .DO2(), .DO1(Q[136]), 
        .DO0(Q[135]))
             /* synthesis MEM_LPC_FILE="pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B" */
             /* synthesis MEM_INIT_FILE="" */;



    // exemplar begin
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_0_7 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_1_6 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_2_5 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_3_4 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_4_3 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_5_2 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_6_1 MEM_INIT_FILE 
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 MEM_LPC_FILE pmi_ram_dpLbnonesadr1379512137951211f54079__PMIP__512__137__137B
    // exemplar attribute pmi_ram_dpLbnonesadr1379512137951211f54079_0_7_0 MEM_INIT_FILE 
    // exemplar end

endmodule
