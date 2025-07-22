// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Jun 29 01:00:55 2025
//
// Verilog Description of module mipi_raw_data_controller
//

module mipi_raw_data_controller (sys_clk, sys_rst_n, hs_burst_flag, dphy_raw_fifo_Empty, 
            dphy_raw_fifo_Q, dphy_raw_fifo_RdEn, dphy_raw_fifo_Reset, 
            raw_data_out_valid, raw_data_out_lane0, raw_data_out_lane1) /* synthesis syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(1[8:32])
    input sys_clk;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(2[11:18])
    input sys_rst_n;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(3[11:20])
    input hs_burst_flag;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(5[11:24])
    input dphy_raw_fifo_Empty;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(9[11:30])
    input [31:0]dphy_raw_fifo_Q;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    output dphy_raw_fifo_RdEn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(12[16:34])
    output dphy_raw_fifo_Reset;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(13[16:35])
    output raw_data_out_valid;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(16[16:34])
    output [15:0]raw_data_out_lane0;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    output [15:0]raw_data_out_lane1;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    
    wire sys_clk_c /* synthesis is_clock=1, SET_AS_NETWORK=sys_clk_c */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(2[11:18])
    
    wire VCC_net, sys_rst_n_c, hs_burst_flag_c, dphy_raw_fifo_Empty_c, 
        dphy_raw_fifo_Q_c_31, dphy_raw_fifo_Q_c_30, dphy_raw_fifo_Q_c_29, 
        dphy_raw_fifo_Q_c_28, dphy_raw_fifo_Q_c_27, dphy_raw_fifo_Q_c_26, 
        dphy_raw_fifo_Q_c_25, dphy_raw_fifo_Q_c_24, dphy_raw_fifo_Q_c_23, 
        dphy_raw_fifo_Q_c_22, dphy_raw_fifo_Q_c_21, dphy_raw_fifo_Q_c_20, 
        dphy_raw_fifo_Q_c_19, dphy_raw_fifo_Q_c_18, dphy_raw_fifo_Q_c_17, 
        dphy_raw_fifo_Q_c_16, dphy_raw_fifo_Q_c_15, dphy_raw_fifo_Q_c_14, 
        dphy_raw_fifo_Q_c_13, dphy_raw_fifo_Q_c_12, dphy_raw_fifo_Q_c_11, 
        dphy_raw_fifo_Q_c_10, dphy_raw_fifo_Q_c_9, dphy_raw_fifo_Q_c_8, 
        dphy_raw_fifo_Q_c_7, dphy_raw_fifo_Q_c_6, dphy_raw_fifo_Q_c_5, 
        dphy_raw_fifo_Q_c_4, dphy_raw_fifo_Q_c_3, dphy_raw_fifo_Q_c_2, 
        dphy_raw_fifo_Q_c_1, dphy_raw_fifo_Q_c_0, dphy_raw_fifo_RdEn_c, 
        dphy_raw_fifo_Reset_c, raw_data_out_valid_c, raw_data_out_lane0_c_15, 
        raw_data_out_lane0_c_14, raw_data_out_lane0_c_13, raw_data_out_lane0_c_12, 
        raw_data_out_lane0_c_11, raw_data_out_lane0_c_10, raw_data_out_lane0_c_9, 
        raw_data_out_lane0_c_8, raw_data_out_lane0_c_7, raw_data_out_lane0_c_6, 
        raw_data_out_lane0_c_5, raw_data_out_lane0_c_4, raw_data_out_lane0_c_3, 
        raw_data_out_lane0_c_2, raw_data_out_lane0_c_1, raw_data_out_lane0_c_0, 
        raw_data_out_lane1_c_15, raw_data_out_lane1_c_14, raw_data_out_lane1_c_13, 
        raw_data_out_lane1_c_12, raw_data_out_lane1_c_11, raw_data_out_lane1_c_10, 
        raw_data_out_lane1_c_9, raw_data_out_lane1_c_8, raw_data_out_lane1_c_7, 
        raw_data_out_lane1_c_6, raw_data_out_lane1_c_5, raw_data_out_lane1_c_4, 
        raw_data_out_lane1_c_3, raw_data_out_lane1_c_2, raw_data_out_lane1_c_1, 
        raw_data_out_lane1_c_0, dphy_raw_fifo_Empty_N_36, hs_burst_flag_N_39, 
        GND_net, n125;
    
    LUT4 hs_burst_flag_I_0_1_lut (.A(hs_burst_flag_c), .Z(hs_burst_flag_N_39)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(61[18] 63[12])
    defparam hs_burst_flag_I_0_1_lut.init = 16'h5555;
    VHI i48 (.Z(VCC_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX raw_data_out_valid_17 (.D(dphy_raw_fifo_RdEn_c), .CK(sys_clk_c), 
            .Q(raw_data_out_valid_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_valid_17.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i1 (.D(dphy_raw_fifo_Q_c_1), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_0));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i1.GSR = "ENABLED";
    FD1S3AX dphy_raw_fifo_RdEn_16 (.D(dphy_raw_fifo_Empty_N_36), .CK(sys_clk_c), 
            .Q(dphy_raw_fifo_RdEn_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam dphy_raw_fifo_RdEn_16.GSR = "ENABLED";
    GSR GSR_INST (.GSR(sys_rst_n_c));
    OB dphy_raw_fifo_Reset_pad (.I(dphy_raw_fifo_Reset_c), .O(dphy_raw_fifo_Reset));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(13[16:35])
    FD1S3IX raw_data_out_lane0__i2 (.D(dphy_raw_fifo_Q_c_2), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_1));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i2.GSR = "ENABLED";
    OB raw_data_out_valid_pad (.I(raw_data_out_valid_c), .O(raw_data_out_valid));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(16[16:34])
    LUT4 dphy_raw_fifo_Empty_I_0_1_lut (.A(dphy_raw_fifo_Empty_c), .Z(dphy_raw_fifo_Empty_N_36)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(43[13:33])
    defparam dphy_raw_fifo_Empty_I_0_1_lut.init = 16'h5555;
    OB dphy_raw_fifo_RdEn_pad (.I(dphy_raw_fifo_RdEn_c), .O(dphy_raw_fifo_RdEn));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(12[16:34])
    OB raw_data_out_lane0_pad_15 (.I(raw_data_out_lane0_c_15), .O(raw_data_out_lane0[15]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_14 (.I(raw_data_out_lane0_c_14), .O(raw_data_out_lane0[14]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_13 (.I(raw_data_out_lane0_c_13), .O(raw_data_out_lane0[13]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_12 (.I(raw_data_out_lane0_c_12), .O(raw_data_out_lane0[12]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_11 (.I(raw_data_out_lane0_c_11), .O(raw_data_out_lane0[11]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_10 (.I(raw_data_out_lane0_c_10), .O(raw_data_out_lane0[10]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_9 (.I(raw_data_out_lane0_c_9), .O(raw_data_out_lane0[9]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_8 (.I(raw_data_out_lane0_c_8), .O(raw_data_out_lane0[8]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_7 (.I(raw_data_out_lane0_c_7), .O(raw_data_out_lane0[7]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_6 (.I(raw_data_out_lane0_c_6), .O(raw_data_out_lane0[6]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_5 (.I(raw_data_out_lane0_c_5), .O(raw_data_out_lane0[5]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_4 (.I(raw_data_out_lane0_c_4), .O(raw_data_out_lane0[4]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_3 (.I(raw_data_out_lane0_c_3), .O(raw_data_out_lane0[3]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_2 (.I(raw_data_out_lane0_c_2), .O(raw_data_out_lane0[2]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_1 (.I(raw_data_out_lane0_c_1), .O(raw_data_out_lane0[1]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane0_pad_0 (.I(raw_data_out_lane0_c_0), .O(raw_data_out_lane0[0]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(17[23:41])
    OB raw_data_out_lane1_pad_15 (.I(raw_data_out_lane1_c_15), .O(raw_data_out_lane1[15]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_14 (.I(raw_data_out_lane1_c_14), .O(raw_data_out_lane1[14]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_13 (.I(raw_data_out_lane1_c_13), .O(raw_data_out_lane1[13]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_12 (.I(raw_data_out_lane1_c_12), .O(raw_data_out_lane1[12]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_11 (.I(raw_data_out_lane1_c_11), .O(raw_data_out_lane1[11]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_10 (.I(raw_data_out_lane1_c_10), .O(raw_data_out_lane1[10]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_9 (.I(raw_data_out_lane1_c_9), .O(raw_data_out_lane1[9]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_8 (.I(raw_data_out_lane1_c_8), .O(raw_data_out_lane1[8]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_7 (.I(raw_data_out_lane1_c_7), .O(raw_data_out_lane1[7]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_6 (.I(raw_data_out_lane1_c_6), .O(raw_data_out_lane1[6]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_5 (.I(raw_data_out_lane1_c_5), .O(raw_data_out_lane1[5]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_4 (.I(raw_data_out_lane1_c_4), .O(raw_data_out_lane1[4]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_3 (.I(raw_data_out_lane1_c_3), .O(raw_data_out_lane1[3]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_2 (.I(raw_data_out_lane1_c_2), .O(raw_data_out_lane1[2]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_1 (.I(raw_data_out_lane1_c_1), .O(raw_data_out_lane1[1]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    OB raw_data_out_lane1_pad_0 (.I(raw_data_out_lane1_c_0), .O(raw_data_out_lane1[0]));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(18[23:41])
    IB sys_clk_pad (.I(sys_clk), .O(sys_clk_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(2[11:18])
    IB sys_rst_n_pad (.I(sys_rst_n), .O(sys_rst_n_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(3[11:20])
    IB hs_burst_flag_pad (.I(hs_burst_flag), .O(hs_burst_flag_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(5[11:24])
    IB dphy_raw_fifo_Empty_pad (.I(dphy_raw_fifo_Empty), .O(dphy_raw_fifo_Empty_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(9[11:30])
    IB dphy_raw_fifo_Q_pad_31 (.I(dphy_raw_fifo_Q[31]), .O(dphy_raw_fifo_Q_c_31));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_30 (.I(dphy_raw_fifo_Q[30]), .O(dphy_raw_fifo_Q_c_30));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_29 (.I(dphy_raw_fifo_Q[29]), .O(dphy_raw_fifo_Q_c_29));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_28 (.I(dphy_raw_fifo_Q[28]), .O(dphy_raw_fifo_Q_c_28));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_27 (.I(dphy_raw_fifo_Q[27]), .O(dphy_raw_fifo_Q_c_27));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_26 (.I(dphy_raw_fifo_Q[26]), .O(dphy_raw_fifo_Q_c_26));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_25 (.I(dphy_raw_fifo_Q[25]), .O(dphy_raw_fifo_Q_c_25));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_24 (.I(dphy_raw_fifo_Q[24]), .O(dphy_raw_fifo_Q_c_24));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_23 (.I(dphy_raw_fifo_Q[23]), .O(dphy_raw_fifo_Q_c_23));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_22 (.I(dphy_raw_fifo_Q[22]), .O(dphy_raw_fifo_Q_c_22));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_21 (.I(dphy_raw_fifo_Q[21]), .O(dphy_raw_fifo_Q_c_21));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_20 (.I(dphy_raw_fifo_Q[20]), .O(dphy_raw_fifo_Q_c_20));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_19 (.I(dphy_raw_fifo_Q[19]), .O(dphy_raw_fifo_Q_c_19));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_18 (.I(dphy_raw_fifo_Q[18]), .O(dphy_raw_fifo_Q_c_18));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_17 (.I(dphy_raw_fifo_Q[17]), .O(dphy_raw_fifo_Q_c_17));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_16 (.I(dphy_raw_fifo_Q[16]), .O(dphy_raw_fifo_Q_c_16));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_15 (.I(dphy_raw_fifo_Q[15]), .O(dphy_raw_fifo_Q_c_15));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_14 (.I(dphy_raw_fifo_Q[14]), .O(dphy_raw_fifo_Q_c_14));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_13 (.I(dphy_raw_fifo_Q[13]), .O(dphy_raw_fifo_Q_c_13));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_12 (.I(dphy_raw_fifo_Q[12]), .O(dphy_raw_fifo_Q_c_12));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_11 (.I(dphy_raw_fifo_Q[11]), .O(dphy_raw_fifo_Q_c_11));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_10 (.I(dphy_raw_fifo_Q[10]), .O(dphy_raw_fifo_Q_c_10));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_9 (.I(dphy_raw_fifo_Q[9]), .O(dphy_raw_fifo_Q_c_9));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_8 (.I(dphy_raw_fifo_Q[8]), .O(dphy_raw_fifo_Q_c_8));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_7 (.I(dphy_raw_fifo_Q[7]), .O(dphy_raw_fifo_Q_c_7));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_6 (.I(dphy_raw_fifo_Q[6]), .O(dphy_raw_fifo_Q_c_6));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_5 (.I(dphy_raw_fifo_Q[5]), .O(dphy_raw_fifo_Q_c_5));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_4 (.I(dphy_raw_fifo_Q[4]), .O(dphy_raw_fifo_Q_c_4));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_3 (.I(dphy_raw_fifo_Q[3]), .O(dphy_raw_fifo_Q_c_3));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_2 (.I(dphy_raw_fifo_Q[2]), .O(dphy_raw_fifo_Q_c_2));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_1 (.I(dphy_raw_fifo_Q[1]), .O(dphy_raw_fifo_Q_c_1));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    IB dphy_raw_fifo_Q_pad_0 (.I(dphy_raw_fifo_Q[0]), .O(dphy_raw_fifo_Q_c_0));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(10[18:33])
    FD1S3IX raw_data_out_lane0__i3 (.D(dphy_raw_fifo_Q_c_4), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_2));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i3.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i4 (.D(dphy_raw_fifo_Q_c_6), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_3));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i4.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i5 (.D(dphy_raw_fifo_Q_c_8), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_4));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i5.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i6 (.D(dphy_raw_fifo_Q_c_10), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_5));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i6.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i7 (.D(dphy_raw_fifo_Q_c_12), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_6));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i7.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i8 (.D(dphy_raw_fifo_Q_c_14), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_7));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i8.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i9 (.D(dphy_raw_fifo_Q_c_16), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_8));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i9.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i10 (.D(dphy_raw_fifo_Q_c_18), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_9));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i10.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i11 (.D(dphy_raw_fifo_Q_c_20), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_10));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i11.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i12 (.D(dphy_raw_fifo_Q_c_22), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_11));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i12.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i13 (.D(dphy_raw_fifo_Q_c_24), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_12));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i13.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i14 (.D(dphy_raw_fifo_Q_c_26), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_13));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i14.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i15 (.D(dphy_raw_fifo_Q_c_28), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_14));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i15.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane0__i16 (.D(dphy_raw_fifo_Q_c_30), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_15));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i16.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i2 (.D(dphy_raw_fifo_Q_c_3), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_1));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i2.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i3 (.D(dphy_raw_fifo_Q_c_5), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_2));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i3.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i4 (.D(dphy_raw_fifo_Q_c_7), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_3));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i4.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i5 (.D(dphy_raw_fifo_Q_c_9), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_4));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i5.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i6 (.D(dphy_raw_fifo_Q_c_11), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_5));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i6.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i7 (.D(dphy_raw_fifo_Q_c_13), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_6));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i7.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i8 (.D(dphy_raw_fifo_Q_c_15), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_7));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i8.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i9 (.D(dphy_raw_fifo_Q_c_17), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_8));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i9.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i10 (.D(dphy_raw_fifo_Q_c_19), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_9));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i10.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i11 (.D(dphy_raw_fifo_Q_c_21), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_10));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i11.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i12 (.D(dphy_raw_fifo_Q_c_23), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_11));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i12.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i13 (.D(dphy_raw_fifo_Q_c_25), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_12));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i13.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i14 (.D(dphy_raw_fifo_Q_c_27), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_13));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i14.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i15 (.D(dphy_raw_fifo_Q_c_29), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_14));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i15.GSR = "ENABLED";
    FD1S3IX raw_data_out_lane1__i16 (.D(dphy_raw_fifo_Q_c_31), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane1_c_15));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane1__i16.GSR = "ENABLED";
    LUT4 i37_1_lut (.A(dphy_raw_fifo_RdEn_c), .Z(n125)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam i37_1_lut.init = 16'h5555;
    VLO i47 (.Z(GND_net));
    FD1P3AX dphy_raw_fifo_Reset_20 (.D(hs_burst_flag_N_39), .SP(sys_rst_n_c), 
            .CK(sys_clk_c), .Q(dphy_raw_fifo_Reset_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam dphy_raw_fifo_Reset_20.GSR = "DISABLED";
    FD1S3IX raw_data_out_lane0__i1 (.D(dphy_raw_fifo_Q_c_0), .CK(sys_clk_c), 
            .CD(n125), .Q(raw_data_out_lane0_c_0));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/src/mipi_raw_data_controller.v(40[14] 65[8])
    defparam raw_data_out_lane0__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

