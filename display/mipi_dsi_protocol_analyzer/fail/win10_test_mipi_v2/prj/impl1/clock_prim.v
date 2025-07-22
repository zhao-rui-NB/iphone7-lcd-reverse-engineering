// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sat Jun 28 17:40:15 2025
//
// Verilog Description of module clock
//

module clock (pll_sys_clk_CLKI, pll_sys_clk_CLKOP) /* synthesis sbp_module="true", syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(11[8:13])
    input pll_sys_clk_CLKI;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(12[11:27])
    output pll_sys_clk_CLKOP;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(13[12:29])
    
    wire pll_sys_clk_CLKI_c /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(12[11:27])
    wire pll_sys_clk_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(13[12:29])
    
    wire GND_net, VCC_net;
    
    VHI i46 (.Z(VCC_net));
    GSR GSR_INST (.GSR(VCC_net));
    pll_sys_clk pll_sys_clk_inst (.pll_sys_clk_CLKI_c(pll_sys_clk_CLKI_c), 
            .pll_sys_clk_CLKOP_c(pll_sys_clk_CLKOP_c), .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(16[17:86])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    IB pll_sys_clk_CLKI_pad (.I(pll_sys_clk_CLKI), .O(pll_sys_clk_CLKI_c));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(12[11:27])
    VLO i4 (.Z(GND_net));
    OB pll_sys_clk_CLKOP_pad (.I(pll_sys_clk_CLKOP_c), .O(pll_sys_clk_CLKOP));   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(13[12:29])
    
endmodule
//
// Verilog Description of module pll_sys_clk
//

module pll_sys_clk (pll_sys_clk_CLKI_c, pll_sys_clk_CLKOP_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input pll_sys_clk_CLKI_c;
    output pll_sys_clk_CLKOP_c;
    input GND_net;
    
    wire pll_sys_clk_CLKI_c /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(12[11:27])
    wire pll_sys_clk_CLKOP_c /* synthesis is_clock=1 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(13[12:29])
    
    EHXPLLM PLLInst_0 (.CLKI(pll_sys_clk_CLKI_c), .CLKFB(pll_sys_clk_CLKOP_c), 
            .PHASESEL0(GND_net), .PHASESEL1(GND_net), .PHASEDIR(GND_net), 
            .PHASESTEP(GND_net), .PHASELOADREG(GND_net), .USRSTDBY(GND_net), 
            .PLLWAKESYNC(GND_net), .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), 
            .ENCLKOS2(GND_net), .ENCLKOS3(GND_net), .CLKOP(pll_sys_clk_CLKOP_c)) /* synthesis FREQUENCY_PIN_CLKOP="150.000000", FREQUENCY_PIN_CLKI="50.000000", ICP_CURRENT="14", LPF_RESISTOR="8", syn_instantiated=1, LSE_LINE_FILE_ID=9, LSE_LCOL=17, LSE_RCOL=86, LSE_LLINE=16, LSE_RLINE=16 */ ;   // c:/users/rui/desktop/win10_crosslink/win10_test_mipi_v2/ip/clock/clock.v(16[17:86])
    defparam PLLInst_0.FIN = "100.0000";
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 3;
    defparam PLLInst_0.CLKOP_DIV = 6;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 5;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
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
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

