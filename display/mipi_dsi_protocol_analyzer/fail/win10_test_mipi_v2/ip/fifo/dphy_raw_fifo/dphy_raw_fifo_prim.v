// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Jun 29 01:16:37 2025
//
// Verilog Description of module dphy_raw_fifo
//

module dphy_raw_fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, 
            RPReset, Q, WCNT, RCNT, Empty, Full) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(8[8:21])
    input [31:0]Data;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(10[23:27])
    input WrClock;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(11[16:23])
    input RdClock;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(12[16:23])
    input WrEn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(13[16:20])
    input RdEn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(14[16:20])
    input Reset;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(15[16:21])
    input RPReset;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(16[16:23])
    output [31:0]Q;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(17[24:25])
    output [5:0]WCNT;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(18[23:27])
    output [5:0]RCNT;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(19[23:27])
    output Empty;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(20[17:22])
    output Full;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(21[17:21])
    
    wire WrClock /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(11[16:23])
    wire RdClock /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(12[16:23])
    
    wire invout_1, invout_0, w_gdata_0, w_gdata_1, w_gdata_2, w_gdata_3, 
        w_gdata_4, wptr_5, r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, 
        r_gdata_4, rptr_5, w_gcount_0, w_gcount_1, w_gcount_2, w_gcount_3, 
        w_gcount_4, w_gcount_5, r_gcount_0, r_gcount_1, r_gcount_2, 
        r_gcount_3, r_gcount_4, r_gcount_5, w_gcount_r20, w_gcount_r0, 
        w_gcount_r21, w_gcount_r1, w_gcount_r22, w_gcount_r2, w_gcount_r23, 
        w_gcount_r3, w_gcount_r24, w_gcount_r4, w_gcount_r25, w_gcount_r5, 
        r_gcount_w20, r_gcount_w0, r_gcount_w21, r_gcount_w1, r_gcount_w22, 
        r_gcount_w2, r_gcount_w23, r_gcount_w3, r_gcount_w24, r_gcount_w4, 
        r_gcount_w25, r_gcount_w5, rRst, iwcount_0, iwcount_1, w_gctr_ci, 
        iwcount_2, iwcount_3, co0, iwcount_4, iwcount_5, co1, wcount_5, 
        ircount_0, ircount_1, r_gctr_ci, ircount_2, ircount_3, co0_1, 
        ircount_4, ircount_5, co1_1, rcount_5, wfill_sub_0, wptr_0, 
        precin, wfill_sub_1, wfill_sub_2, wptr_2, wptr_1, co0_2, 
        wfill_sub_3, wfill_sub_4, wptr_4, wptr_3, co1_2, wfill_sub_5, 
        wfill_sub_msb, co2_2, rfill_sub_0, rptr_0, precin_1, rfill_sub_1, 
        rfill_sub_2, rptr_2, rptr_1, co0_3, rfill_sub_3, rfill_sub_4, 
        rptr_4, rptr_3, co1_3, rfill_sub_5, rfill_sub_msb, co2_3, 
        rden_i, cmp_ci, wcount_r0, wcount_r1, rcount_0, rcount_1, 
        co0_4, w_g2b_xor_cluster_0, wcount_r3, rcount_2, rcount_3, 
        co1_4, wcount_r4, empty_cmp_clr, rcount_4, empty_cmp_set, 
        empty_d, empty_d_c, wren_i, cmp_ci_1, rcount_w0, rcount_w1, 
        wcount_0, wcount_1, co0_5, r_g2b_xor_cluster_0, rcount_w3, 
        wcount_2, wcount_3, co1_5, rcount_w4, full_cmp_clr, wcount_4, 
        full_cmp_set, full_d, scuba_vhi, scuba_vlo, full_d_c;
    
    ROM16X1A LUT4_12 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(scuba_vlo), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(wcount_r4), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(wcount_r3), .AD1(w_gcount_r22), .AD2(w_gcount_r21), 
            .AD3(w_gcount_r20), .DO0(wcount_r0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(r_gcount_w25), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(scuba_vlo), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0110100110010110;
    ROM16X1A LUT4_5 (.AD0(rcount_w4), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0110100110010110;
    ROM16X1A LUT4_4 (.AD0(rcount_w3), .AD1(r_gcount_w22), .AD2(r_gcount_w21), 
            .AD3(r_gcount_w20), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0110100110010110;
    XOR2 XOR2_t1 (.A(wptr_5), .B(r_gcount_w25), .Z(wfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(239[10:67])
    ROM16X1A LUT4_2 (.AD0(scuba_vlo), .AD1(w_gcount_r25), .AD2(rcount_5), 
            .AD3(rptr_5), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0001000000000100;
    ROM16X1A LUT4_1 (.AD0(scuba_vlo), .AD1(r_gcount_w25), .AD2(wcount_5), 
            .AD3(wptr_5), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0000000101000000;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(r_gcount_w25), .AD2(wcount_5), 
            .AD3(wptr_5), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100000000000001;
    PDPW8KE pdp_ram_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
            .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), 
            .DI7(Data[7]), .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), 
            .DI11(Data[11]), .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), 
            .DI15(Data[15]), .DI16(Data[16]), .DI17(Data[17]), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(scuba_vlo), .ADW6(scuba_vlo), .ADW7(scuba_vlo), .ADW8(scuba_vlo), 
            .BE0(scuba_vhi), .BE1(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(scuba_vlo), .ADR10(scuba_vlo), .ADR11(scuba_vlo), .ADR12(scuba_vlo), 
            .CER(rden_i), .OCER(rden_i), .CLKR(RdClock), .CSR0(scuba_vlo), 
            .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), .DO0(Q[9]), 
            .DO1(Q[10]), .DO2(Q[11]), .DO3(Q[12]), .DO4(Q[13]), .DO5(Q[14]), 
            .DO6(Q[15]), .DO7(Q[16]), .DO8(Q[17]), .DO9(Q[0]), .DO10(Q[1]), 
            .DO11(Q[2]), .DO12(Q[3]), .DO13(Q[4]), .DO14(Q[5]), .DO15(Q[6]), 
            .DO16(Q[7]), .DO17(Q[8])) /* synthesis MEM_LPC_FILE="dphy_raw_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
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
    FD1P3DX FF_72 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(320[13] 321[22])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(324[13] 325[22])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(328[13] 329[22])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(332[13] 333[22])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(336[13] 337[22])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(340[13] 341[24])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(344[13] 345[24])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(348[13] 349[24])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(352[13] 353[24])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(356[13] 357[24])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(360[13] 361[24])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(364[13] 365[20])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(368[13] 369[20])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(372[13] 373[20])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(376[13] 377[20])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(380[13] 381[20])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(384[13] 385[20])
    defparam FF_56.GSR = "ENABLED";
    FD1P3BX FF_55 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(388[13] 389[22])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(392[13] 393[22])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(396[13] 397[22])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(400[13] 401[22])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(404[13] 405[22])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(408[13] 409[22])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(412[13] 413[24])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(416[13] 417[24])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(420[13] 421[24])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(424[13] 425[24])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(428[13] 429[24])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(432[13:87])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(435[13:83])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(438[13:83])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(441[13:83])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(444[13:83])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(447[13:83])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(450[13:83])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(453[13:78])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(456[13:78])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(459[13:78])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(462[13:78])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(465[13:78])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(468[13:78])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(471[13:77])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(474[13:77])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(477[13:77])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(480[13:77])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(483[13:77])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(486[13:77])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(489[13:80])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(492[13:80])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(495[13:80])
    defparam FF_23.GSR = "ENABLED";
    FD1S3DX FF_22 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(498[13:80])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(501[13:80])
    defparam FF_21.GSR = "ENABLED";
    FD1S3DX FF_20 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(504[13:80])
    defparam FF_20.GSR = "ENABLED";
    FD1S3DX FF_19 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(507[13:79])
    defparam FF_19.GSR = "ENABLED";
    FD1S3DX FF_18 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(510[13:79])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(513[13:79])
    defparam FF_17.GSR = "ENABLED";
    FD1S3DX FF_16 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(516[13:79])
    defparam FF_16.GSR = "ENABLED";
    FD1S3DX FF_15 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(519[13:79])
    defparam FF_15.GSR = "ENABLED";
    FD1S3DX FF_14 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(522[13:79])
    defparam FF_14.GSR = "ENABLED";
    FD1S3DX FF_13 (.D(wfill_sub_0), .CK(WrClock), .CD(Reset), .Q(WCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(525[13:75])
    defparam FF_13.GSR = "ENABLED";
    FD1S3DX FF_12 (.D(wfill_sub_1), .CK(WrClock), .CD(Reset), .Q(WCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(528[13:75])
    defparam FF_12.GSR = "ENABLED";
    FD1S3DX FF_11 (.D(wfill_sub_2), .CK(WrClock), .CD(Reset), .Q(WCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(531[13:75])
    defparam FF_11.GSR = "ENABLED";
    FD1S3DX FF_10 (.D(wfill_sub_3), .CK(WrClock), .CD(Reset), .Q(WCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(534[13:75])
    defparam FF_10.GSR = "ENABLED";
    FD1S3DX FF_9 (.D(wfill_sub_4), .CK(WrClock), .CD(Reset), .Q(WCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(537[13:74])
    defparam FF_9.GSR = "ENABLED";
    FD1S3DX FF_8 (.D(wfill_sub_5), .CK(WrClock), .CD(Reset), .Q(WCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(540[13:74])
    defparam FF_8.GSR = "ENABLED";
    FD1S3DX FF_7 (.D(rfill_sub_0), .CK(RdClock), .CD(rRst), .Q(RCNT[0])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(543[13:73])
    defparam FF_7.GSR = "ENABLED";
    FD1S3DX FF_6 (.D(rfill_sub_1), .CK(RdClock), .CD(rRst), .Q(RCNT[1])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(546[13:73])
    defparam FF_6.GSR = "ENABLED";
    FD1S3DX FF_5 (.D(rfill_sub_2), .CK(RdClock), .CD(rRst), .Q(RCNT[2])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(549[13:73])
    defparam FF_5.GSR = "ENABLED";
    FD1S3DX FF_4 (.D(rfill_sub_3), .CK(RdClock), .CD(rRst), .Q(RCNT[3])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(552[13:73])
    defparam FF_4.GSR = "ENABLED";
    FD1S3DX FF_3 (.D(rfill_sub_4), .CK(RdClock), .CD(rRst), .Q(RCNT[4])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(555[13:73])
    defparam FF_3.GSR = "ENABLED";
    FD1S3DX FF_2 (.D(rfill_sub_5), .CK(RdClock), .CD(rRst), .Q(RCNT[5])) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(558[13:73])
    defparam FF_2.GSR = "ENABLED";
    FD1S3BX FF_1 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(Empty)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(561[13:69])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(Full)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(564[13:68])
    defparam FF_0.GSR = "ENABLED";
    CCU2C w_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(571[11] 573[48])
    defparam w_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam w_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam w_gctr_cia.INJECT1_0 = "NO";
    defparam w_gctr_cia.INJECT1_1 = "NO";
    CCU2C w_gctr_0 (.A0(wcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(w_gctr_ci), .COUT(co0), .S0(iwcount_0), .S1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(579[11] 581[69])
    defparam w_gctr_0.INIT0 = 16'b0110011010101010;
    defparam w_gctr_0.INIT1 = 16'b0110011010101010;
    defparam w_gctr_0.INJECT1_0 = "NO";
    defparam w_gctr_0.INJECT1_1 = "NO";
    CCU2C w_gctr_1 (.A0(wcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0), .COUT(co1), .S0(iwcount_2), .S1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(587[11] 589[63])
    defparam w_gctr_1.INIT0 = 16'b0110011010101010;
    defparam w_gctr_1.INIT1 = 16'b0110011010101010;
    defparam w_gctr_1.INJECT1_0 = "NO";
    defparam w_gctr_1.INJECT1_1 = "NO";
    CCU2C w_gctr_2 (.A0(wcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1), .S0(iwcount_4), .S1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(595[11] 597[63])
    defparam w_gctr_2.INIT0 = 16'b0110011010101010;
    defparam w_gctr_2.INIT1 = 16'b0110011010101010;
    defparam w_gctr_2.INJECT1_0 = "NO";
    defparam w_gctr_2.INJECT1_1 = "NO";
    CCU2C r_gctr_cia (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(603[11] 605[48])
    defparam r_gctr_cia.INIT0 = 16'b0110011010101010;
    defparam r_gctr_cia.INIT1 = 16'b0110011010101010;
    defparam r_gctr_cia.INJECT1_0 = "NO";
    defparam r_gctr_cia.INJECT1_1 = "NO";
    CCU2C r_gctr_0 (.A0(rcount_0), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_1), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(r_gctr_ci), .COUT(co0_1), .S0(ircount_0), .S1(ircount_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(611[11] 613[71])
    defparam r_gctr_0.INIT0 = 16'b0110011010101010;
    defparam r_gctr_0.INIT1 = 16'b0110011010101010;
    defparam r_gctr_0.INJECT1_0 = "NO";
    defparam r_gctr_0.INJECT1_1 = "NO";
    CCU2C r_gctr_1 (.A0(rcount_2), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_3), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_1), .COUT(co1_1), .S0(ircount_2), .S1(ircount_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(619[11] 621[67])
    defparam r_gctr_1.INIT0 = 16'b0110011010101010;
    defparam r_gctr_1.INIT1 = 16'b0110011010101010;
    defparam r_gctr_1.INJECT1_0 = "NO";
    defparam r_gctr_1.INJECT1_1 = "NO";
    CCU2C r_gctr_2 (.A0(rcount_4), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(rcount_5), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_1), .S0(ircount_4), .S1(ircount_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(627[11] 629[67])
    defparam r_gctr_2.INIT0 = 16'b0110011010101010;
    defparam r_gctr_2.INIT1 = 16'b0110011010101010;
    defparam r_gctr_2.INJECT1_0 = "NO";
    defparam r_gctr_2.INJECT1_1 = "NO";
    CCU2C precin_inst207 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(635[11] 637[61])
    defparam precin_inst207.INIT0 = 16'b0000000000000000;
    defparam precin_inst207.INIT1 = 16'b0000000000000000;
    defparam precin_inst207.INJECT1_0 = "NO";
    defparam precin_inst207.INJECT1_1 = "NO";
    CCU2C wfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_0), .B1(rcount_w0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin), .COUT(co0_2), .S1(wfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(643[11] 645[61])
    defparam wfill_0.INIT0 = 16'b1001100110101010;
    defparam wfill_0.INIT1 = 16'b1001100110101010;
    defparam wfill_0.INJECT1_0 = "NO";
    defparam wfill_0.INJECT1_1 = "NO";
    CCU2C wfill_1 (.A0(wptr_1), .B0(rcount_w1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_2), .B1(r_g2b_xor_cluster_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_2), .COUT(co1_2), .S0(wfill_sub_1), .S1(wfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(651[11] 653[71])
    defparam wfill_1.INIT0 = 16'b1001100110101010;
    defparam wfill_1.INIT1 = 16'b1001100110101010;
    defparam wfill_1.INJECT1_0 = "NO";
    defparam wfill_1.INJECT1_1 = "NO";
    CCU2C wfill_2 (.A0(wptr_3), .B0(rcount_w3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wptr_4), .B1(rcount_w4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_2), .COUT(co2_2), .S0(wfill_sub_3), .S1(wfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(659[11] 661[71])
    defparam wfill_2.INIT0 = 16'b1001100110101010;
    defparam wfill_2.INIT1 = 16'b1001100110101010;
    defparam wfill_2.INJECT1_0 = "NO";
    defparam wfill_2.INJECT1_1 = "NO";
    CCU2C wfill_3 (.A0(wfill_sub_msb), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_2), .S0(wfill_sub_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(667[11] 669[55])
    defparam wfill_3.INIT0 = 16'b1001100110101010;
    defparam wfill_3.INIT1 = 16'b1001100110101010;
    defparam wfill_3.INJECT1_0 = "NO";
    defparam wfill_3.INJECT1_1 = "NO";
    CCU2C precin_inst218 (.A0(scuba_vhi), .B0(scuba_vhi), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vhi), .B1(scuba_vhi), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(precin_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(675[11] 677[63])
    defparam precin_inst218.INIT0 = 16'b0000000000000000;
    defparam precin_inst218.INIT1 = 16'b0000000000000000;
    defparam precin_inst218.INJECT1_0 = "NO";
    defparam precin_inst218.INJECT1_1 = "NO";
    CCU2C rfill_0 (.A0(scuba_vhi), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r0), .B1(rptr_0), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(precin_1), .COUT(co0_3), .S1(rfill_sub_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(683[11] 685[63])
    defparam rfill_0.INIT0 = 16'b1001100110101010;
    defparam rfill_0.INIT1 = 16'b1001100110101010;
    defparam rfill_0.INJECT1_0 = "NO";
    defparam rfill_0.INJECT1_1 = "NO";
    CCU2C rfill_1 (.A0(wcount_r1), .B0(rptr_1), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(w_g2b_xor_cluster_0), .B1(rptr_2), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co0_3), .COUT(co1_3), .S0(rfill_sub_1), .S1(rfill_sub_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(691[11] 693[71])
    defparam rfill_1.INIT0 = 16'b1001100110101010;
    defparam rfill_1.INIT1 = 16'b1001100110101010;
    defparam rfill_1.INJECT1_0 = "NO";
    defparam rfill_1.INJECT1_1 = "NO";
    CCU2C rfill_2 (.A0(wcount_r3), .B0(rptr_3), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_r4), .B1(rptr_4), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_3), .COUT(co2_3), .S0(rfill_sub_3), .S1(rfill_sub_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(699[11] 701[71])
    defparam rfill_2.INIT0 = 16'b1001100110101010;
    defparam rfill_2.INIT1 = 16'b1001100110101010;
    defparam rfill_2.INJECT1_0 = "NO";
    defparam rfill_2.INJECT1_1 = "NO";
    CCU2C rfill_3 (.A0(rfill_sub_msb), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co2_3), .S0(rfill_sub_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(707[11] 709[55])
    defparam rfill_3.INIT0 = 16'b1001100110101010;
    defparam rfill_3.INIT1 = 16'b1001100110101010;
    defparam rfill_3.INJECT1_0 = "NO";
    defparam rfill_3.INJECT1_1 = "NO";
    CCU2C empty_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rden_i), .B1(rden_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(715[11] 717[45])
    defparam empty_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam empty_cmp_ci_a.INJECT1_0 = "NO";
    defparam empty_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C empty_cmp_0 (.A0(rcount_0), .B0(wcount_r0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_1), .B1(wcount_r1), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(cmp_ci), .COUT(co0_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(723[11] 725[50])
    defparam empty_cmp_0.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_0.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_0.INJECT1_0 = "NO";
    defparam empty_cmp_0.INJECT1_1 = "NO";
    CCU2C empty_cmp_1 (.A0(rcount_2), .B0(w_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(rcount_3), .B1(wcount_r3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_4), .COUT(co1_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(731[11] 733[65])
    defparam empty_cmp_1.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_1.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_1.INJECT1_0 = "NO";
    defparam empty_cmp_1.INJECT1_1 = "NO";
    CCU2C empty_cmp_2 (.A0(rcount_4), .B0(wcount_r4), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(empty_cmp_set), .B1(empty_cmp_clr), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co1_4), .COUT(empty_d_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(739[11] 741[69])
    defparam empty_cmp_2.INIT0 = 16'b1001100110101010;
    defparam empty_cmp_2.INIT1 = 16'b1001100110101010;
    defparam empty_cmp_2.INJECT1_0 = "NO";
    defparam empty_cmp_2.INJECT1_1 = "NO";
    CCU2C a0 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(747[11] 749[55])
    defparam a0.INIT0 = 16'b0110011010101010;
    defparam a0.INIT1 = 16'b0110011010101010;
    defparam a0.INJECT1_0 = "NO";
    defparam a0.INJECT1_1 = "NO";
    CCU2C full_cmp_ci_a (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wren_i), .B1(wren_i), .C1(scuba_vhi), 
          .D1(scuba_vhi), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(755[11] 757[47])
    defparam full_cmp_ci_a.INIT0 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INIT1 = 16'b0110011010101010;
    defparam full_cmp_ci_a.INJECT1_0 = "NO";
    defparam full_cmp_ci_a.INJECT1_1 = "NO";
    CCU2C full_cmp_0 (.A0(wcount_0), .B0(rcount_w0), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(wcount_1), .B1(rcount_w1), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(cmp_ci_1), .COUT(co0_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(763[11] 765[52])
    defparam full_cmp_0.INIT0 = 16'b1001100110101010;
    defparam full_cmp_0.INIT1 = 16'b1001100110101010;
    defparam full_cmp_0.INJECT1_0 = "NO";
    defparam full_cmp_0.INJECT1_1 = "NO";
    CCU2C full_cmp_1 (.A0(wcount_2), .B0(r_g2b_xor_cluster_0), .C0(scuba_vhi), 
          .D0(scuba_vhi), .A1(wcount_3), .B1(rcount_w3), .C1(scuba_vhi), 
          .D1(scuba_vhi), .CIN(co0_5), .COUT(co1_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(771[11] 773[65])
    defparam full_cmp_1.INIT0 = 16'b1001100110101010;
    defparam full_cmp_1.INIT1 = 16'b1001100110101010;
    defparam full_cmp_1.INJECT1_0 = "NO";
    defparam full_cmp_1.INJECT1_1 = "NO";
    CCU2C full_cmp_2 (.A0(wcount_4), .B0(rcount_w4), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(full_cmp_set), .B1(full_cmp_clr), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(co1_5), .COUT(full_d_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(779[11] 781[68])
    defparam full_cmp_2.INIT0 = 16'b1001100110101010;
    defparam full_cmp_2.INIT1 = 16'b1001100110101010;
    defparam full_cmp_2.INJECT1_0 = "NO";
    defparam full_cmp_2.INJECT1_1 = "NO";
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    CCU2C a1 (.A0(scuba_vlo), .B0(scuba_vlo), .C0(scuba_vhi), .D0(scuba_vhi), 
          .A1(scuba_vlo), .B1(scuba_vlo), .C1(scuba_vhi), .D1(scuba_vhi), 
          .CIN(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(791[11] 793[53])
    defparam a1.INIT0 = 16'b0110011010101010;
    defparam a1.INIT1 = 16'b0110011010101010;
    defparam a1.INJECT1_0 = "NO";
    defparam a1.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(scuba_vhi));
    AND2 AND2_t14 (.A(WrEn), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(169[10:55])
    INV INV_1 (.A(Full), .Z(invout_1));
    AND2 AND2_t13 (.A(RdEn), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(173[10:55])
    INV INV_0 (.A(Empty), .Z(invout_0));
    OR2 OR2_t12 (.A(Reset), .B(RPReset), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(177[9:51])
    XOR2 XOR2_t11 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(179[10:62])
    XOR2 XOR2_t10 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(181[10:62])
    XOR2 XOR2_t9 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(183[10:61])
    XOR2 XOR2_t8 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(185[10:61])
    XOR2 XOR2_t7 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(187[10:61])
    XOR2 XOR2_t6 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(189[10:61])
    XOR2 XOR2_t5 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(191[10:61])
    XOR2 XOR2_t4 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(193[10:61])
    XOR2 XOR2_t3 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(195[10:61])
    XOR2 XOR2_t2 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(197[10:61])
    ROM16X1A LUT4_13 (.AD0(w_gcount_r25), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    XOR2 XOR2_t0 (.A(w_gcount_r25), .B(rptr_5), .Z(rfill_sub_msb)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(241[10:67])
    ROM16X1A LUT4_3 (.AD0(scuba_vlo), .AD1(w_gcount_r25), .AD2(rcount_5), 
            .AD3(rptr_5), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0000010000010000;
    PDPW8KE pdp_ram_0_1_0 (.DI0(Data[18]), .DI1(Data[19]), .DI2(Data[20]), 
            .DI3(Data[21]), .DI4(Data[22]), .DI5(Data[23]), .DI6(Data[24]), 
            .DI7(Data[25]), .DI8(Data[26]), .DI9(Data[27]), .DI10(Data[28]), 
            .DI11(Data[29]), .DI12(Data[30]), .DI13(Data[31]), .DI14(scuba_vlo), 
            .DI15(scuba_vlo), .DI16(scuba_vlo), .DI17(scuba_vlo), .ADW0(wptr_0), 
            .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
            .ADW5(scuba_vlo), .ADW6(scuba_vlo), .ADW7(scuba_vlo), .ADW8(scuba_vlo), 
            .BE0(scuba_vhi), .BE1(scuba_vhi), .CEW(wren_i), .CLKW(WrClock), 
            .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), .ADR0(scuba_vlo), 
            .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), .ADR4(rptr_0), 
            .ADR5(rptr_1), .ADR6(rptr_2), .ADR7(rptr_3), .ADR8(rptr_4), 
            .ADR9(scuba_vlo), .ADR10(scuba_vlo), .ADR11(scuba_vlo), .ADR12(scuba_vlo), 
            .CER(rden_i), .OCER(rden_i), .CLKR(RdClock), .CSR0(scuba_vlo), 
            .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), .DO0(Q[27]), 
            .DO1(Q[28]), .DO2(Q[29]), .DO3(Q[30]), .DO4(Q[31]), .DO9(Q[18]), 
            .DO10(Q[19]), .DO11(Q[20]), .DO12(Q[21]), .DO13(Q[22]), 
            .DO14(Q[23]), .DO15(Q[24]), .DO16(Q[25]), .DO17(Q[26])) /* synthesis MEM_LPC_FILE="dphy_raw_fifo.lpc", MEM_INIT_FILE="", syn_instantiated=1 */ ;
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
    FD1P3BX FF_73 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/fifo/dphy_raw_fifo/dphy_raw_fifo.v(316[13] 317[22])
    defparam FF_73.GSR = "ENABLED";
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

