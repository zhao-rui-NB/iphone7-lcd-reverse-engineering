// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Jun 28 17:35:31 2025
//
// Verilog Description of module mipi_rx
//

module mipi_rx (clk_cd, clk_n, clk_p, clk_rxhsen, clk_rxlpen, clk_rxlpn, 
            clk_rxlpp, clkhsbyte, d0_cd, d0_hsdeseren, d0_rxhsen, 
            d0_rxlpen, d0_rxlpn, d0_rxlpp, d0_txlpn, d0_txlpp, rxhsbyteclk, 
            usrstdby, data_n, data_p, q) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(8[8:15])
    output clk_cd;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(20[17:23])
    inout clk_n /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(29[16:21])
    inout clk_p /* synthesis black_box_pad_pin=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(30[16:21])
    input clk_rxhsen;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(12[16:26])
    input clk_rxlpen;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(13[16:26])
    output clk_rxlpn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(21[17:26])
    output clk_rxlpp;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(22[17:26])
    output clkhsbyte;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(23[17:26])
    output d0_cd;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(24[17:22])
    input d0_hsdeseren;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(14[16:28])
    input d0_rxhsen;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(15[16:25])
    input d0_rxlpen;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(16[16:25])
    output d0_rxlpn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(25[17:25])
    output d0_rxlpp;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(26[17:25])
    input d0_txlpn;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(17[16:24])
    input d0_txlpp;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(18[16:24])
    output rxhsbyteclk;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(27[17:28])
    input usrstdby;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(19[16:24])
    inout [1:0]data_n;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(31[22:28])
    inout [1:0]data_p;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(32[22:28])
    output [31:0]q;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(28[24:25])
    
    wire rxhsbyteclk /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(27[17:28])
    wire clk_n /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(29[16:21])
    wire clk_p /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(30[16:21])
    
    wire clk_rxhsen_inv, d0_rxlpen_inv, d0_rxhsen_inv, d0txlpen, d0_olsn, 
        d0_olsp, d0rxlpen, scuba_vhi, clkrxlpen, GND_net;
    
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    MIPIDPHYA Inst_MIPIDPHYA (.DP0(data_p[0]), .DN0(data_n[0]), .DP1(data_p[1]), 
            .DN1(data_n[1]), .CKP(clk_p), .CKN(clk_n), .D0RXHSEN(d0_rxhsen), 
            .D0HSDESEREN(d0_hsdeseren), .D0RXLPEN(d0rxlpen), .D0CDEN(scuba_vhi), 
            .D0TXHSEN(GND_net), .D0HSSEREN(GND_net), .D0HSTXDATA0(GND_net), 
            .D0HSTXDATA1(GND_net), .D0HSTXDATA2(GND_net), .D0HSTXDATA3(GND_net), 
            .D0HSTXDATA4(GND_net), .D0HSTXDATA5(GND_net), .D0HSTXDATA6(GND_net), 
            .D0HSTXDATA7(GND_net), .D0HSTXDATA8(GND_net), .D0HSTXDATA9(GND_net), 
            .D0HSTXDATA10(GND_net), .D0HSTXDATA11(GND_net), .D0HSTXDATA12(GND_net), 
            .D0HSTXDATA13(GND_net), .D0HSTXDATA14(GND_net), .D0HSTXDATA15(GND_net), 
            .D0TXHSPD(scuba_vhi), .D0DTXLPP(d0_txlpp), .D0DTXLPN(d0_txlpn), 
            .D0TXLPEN(d0txlpen), .D0HSRXDATA0(q[0]), .D0HSRXDATA1(q[2]), 
            .D0HSRXDATA2(q[4]), .D0HSRXDATA3(q[6]), .D0HSRXDATA4(q[8]), 
            .D0HSRXDATA5(q[10]), .D0HSRXDATA6(q[12]), .D0HSRXDATA7(q[14]), 
            .D0HSRXDATA8(q[16]), .D0HSRXDATA9(q[18]), .D0HSRXDATA10(q[20]), 
            .D0HSRXDATA11(q[22]), .D0HSRXDATA12(q[24]), .D0HSRXDATA13(q[26]), 
            .D0HSRXDATA14(q[28]), .D0HSRXDATA15(q[30]), .D0DRXLPP(d0_rxlpp), 
            .D0DRXLPN(d0_rxlpn), .D0DCDP(d0_olsp), .D0DCDN(d0_olsn), .D1RXHSEN(d0_rxhsen), 
            .D1HSDESEREN(d0_hsdeseren), .D1RXLPEN(d0rxlpen), .D1CDEN(GND_net), 
            .D1TXHSEN(GND_net), .D1HSSEREN(GND_net), .D1HSTXDATA0(GND_net), 
            .D1HSTXDATA1(GND_net), .D1HSTXDATA2(GND_net), .D1HSTXDATA3(GND_net), 
            .D1HSTXDATA4(GND_net), .D1HSTXDATA5(GND_net), .D1HSTXDATA6(GND_net), 
            .D1HSTXDATA7(GND_net), .D1HSTXDATA8(GND_net), .D1HSTXDATA9(GND_net), 
            .D1HSTXDATA10(GND_net), .D1HSTXDATA11(GND_net), .D1HSTXDATA12(GND_net), 
            .D1HSTXDATA13(GND_net), .D1HSTXDATA14(GND_net), .D1HSTXDATA15(GND_net), 
            .D1TXHSPD(scuba_vhi), .D1DTXLPP(GND_net), .D1DTXLPN(GND_net), 
            .D1TXLPEN(GND_net), .D1HSRXDATA0(q[1]), .D1HSRXDATA1(q[3]), 
            .D1HSRXDATA2(q[5]), .D1HSRXDATA3(q[7]), .D1HSRXDATA4(q[9]), 
            .D1HSRXDATA5(q[11]), .D1HSRXDATA6(q[13]), .D1HSRXDATA7(q[15]), 
            .D1HSRXDATA8(q[17]), .D1HSRXDATA9(q[19]), .D1HSRXDATA10(q[21]), 
            .D1HSRXDATA11(q[23]), .D1HSRXDATA12(q[25]), .D1HSRXDATA13(q[27]), 
            .D1HSRXDATA14(q[29]), .D1HSRXDATA15(q[31]), .D2RXHSEN(GND_net), 
            .D2HSDESEREN(GND_net), .D2RXLPEN(GND_net), .D2CDEN(GND_net), 
            .D2TXHSEN(GND_net), .D2HSSEREN(GND_net), .D2HSTXDATA0(GND_net), 
            .D2HSTXDATA1(GND_net), .D2HSTXDATA2(GND_net), .D2HSTXDATA3(GND_net), 
            .D2HSTXDATA4(GND_net), .D2HSTXDATA5(GND_net), .D2HSTXDATA6(GND_net), 
            .D2HSTXDATA7(GND_net), .D2HSTXDATA8(GND_net), .D2HSTXDATA9(GND_net), 
            .D2HSTXDATA10(GND_net), .D2HSTXDATA11(GND_net), .D2HSTXDATA12(GND_net), 
            .D2HSTXDATA13(GND_net), .D2HSTXDATA14(GND_net), .D2HSTXDATA15(GND_net), 
            .D2TXHSPD(scuba_vhi), .D2DTXLPP(GND_net), .D2DTXLPN(GND_net), 
            .D2TXLPEN(GND_net), .D3RXHSEN(GND_net), .D3HSDESEREN(GND_net), 
            .D3RXLPEN(GND_net), .D3CDEN(GND_net), .D3TXHSEN(GND_net), 
            .D3HSSEREN(GND_net), .D3HSTXDATA0(GND_net), .D3HSTXDATA1(GND_net), 
            .D3HSTXDATA2(GND_net), .D3HSTXDATA3(GND_net), .D3HSTXDATA4(GND_net), 
            .D3HSTXDATA5(GND_net), .D3HSTXDATA6(GND_net), .D3HSTXDATA7(GND_net), 
            .D3HSTXDATA8(GND_net), .D3HSTXDATA9(GND_net), .D3HSTXDATA10(GND_net), 
            .D3HSTXDATA11(GND_net), .D3HSTXDATA12(GND_net), .D3HSTXDATA13(GND_net), 
            .D3HSTXDATA14(GND_net), .D3HSTXDATA15(GND_net), .D3TXHSPD(scuba_vhi), 
            .D3DTXLPP(GND_net), .D3DTXLPN(GND_net), .D3TXLPEN(GND_net), 
            .CLKRXHSEN(clk_rxhsen), .CLKRXLPEN(clkrxlpen), .CLKCDEN(scuba_vhi), 
            .CLKTXHSEN(GND_net), .CLKTXHSGATE(GND_net), .CLKTXHSPD(scuba_vhi), 
            .CLKDTXLPP(GND_net), .CLKDTXLPN(GND_net), .CLKTXLPEN(GND_net), 
            .PDDPHY(usrstdby), .PDPLL(scuba_vhi), .PDBIAS(GND_net), .PDCKG(GND_net), 
            .LBEN(GND_net), .CLKREF(GND_net), .HSBYTECLKD(rxhsbyteclk), 
            .CLKHSBYTE(clkhsbyte), .CLKDRXLPP(clk_rxlpp), .CLKDRXLPN(clk_rxlpn), 
            .CLKDCDN(clk_cd)) /* synthesis HS_MODE="RX", DIR_PIN_DN1="INPUT", DIR_PIN_DP1="INPUT", DIR_PIN_CKN="INPUT", DIR_PIN_CKP="INPUT", FREQUENCY_PIN_HSBYTECLKD="75.000000", syn_instantiated=1 */ ;
    defparam Inst_MIPIDPHYA.HSEL = 1;
    defparam Inst_MIPIDPHYA.HS_16BIT_EN = 1;
    defparam Inst_MIPIDPHYA.CN = 0;
    defparam Inst_MIPIDPHYA.CM = 0;
    defparam Inst_MIPIDPHYA.CO = 0;
    defparam Inst_MIPIDPHYA.PLL_TST = 9;
    defparam Inst_MIPIDPHYA.ENP_DESER = 0;
    OR2 OR2_t3 (.A(d0_olsp), .B(d0_olsn), .Z(d0_cd)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(79[9:53])
    INV INV_2 (.A(clk_rxhsen), .Z(clk_rxhsen_inv));
    AND2 AND2_t2 (.A(clk_rxhsen_inv), .B(clk_rxlpen), .Z(clkrxlpen)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(83[10:69])
    INV INV_1 (.A(d0_rxhsen), .Z(d0_rxhsen_inv));
    AND2 AND2_t1 (.A(d0_rxhsen_inv), .B(d0_rxlpen), .Z(d0rxlpen)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(87[10:66])
    INV INV_0 (.A(d0_rxlpen), .Z(d0_rxlpen_inv));
    AND2 AND2_t0 (.A(d0_rxhsen_inv), .B(d0_rxlpen_inv), .Z(d0txlpen)) /* synthesis syn_instantiated=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/prj/mipi/mipi_rx/mipi_rx.v(91[10:70])
    GSR GSR_INST (.GSR(scuba_vhi));
    VLO i4 (.Z(GND_net));
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

