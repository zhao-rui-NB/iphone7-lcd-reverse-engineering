--VHDL instantiation template

component clock is
    port (pll_sys_clk_CLKI: in std_logic;
        pll_sys_clk_CLKOP: out std_logic;
        pll_sys_clk_CLKOS: out std_logic
    );
    
end component clock; -- sbp_module=true 
_inst: clock port map (pll_sys_clk_CLKI => __,pll_sys_clk_CLKOP => __,pll_sys_clk_CLKOS => __);
