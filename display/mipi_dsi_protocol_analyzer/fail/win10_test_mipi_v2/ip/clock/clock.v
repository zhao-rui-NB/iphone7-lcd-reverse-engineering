/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module clock
//
module clock (pll_sys_clk_CLKI, pll_sys_clk_CLKOP, pll_sys_clk_CLKOS) /* synthesis sbp_module=true */ ;
    input pll_sys_clk_CLKI;
    output pll_sys_clk_CLKOP;
    output pll_sys_clk_CLKOS;
    
    
    pll_sys_clk pll_sys_clk_inst (.CLKI(pll_sys_clk_CLKI), .CLKOP(pll_sys_clk_CLKOP), 
            .CLKOS(pll_sys_clk_CLKOS));
    
endmodule

