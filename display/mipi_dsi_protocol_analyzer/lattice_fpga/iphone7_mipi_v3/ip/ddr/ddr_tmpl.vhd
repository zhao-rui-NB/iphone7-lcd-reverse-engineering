--VHDL instantiation template

component ddr is
    port (ddr_output_data: in std_logic_vector(33 downto 0);
        ddr_output_dout: out std_logic_vector(16 downto 0);
        ddr_output_clkout: out std_logic;
        ddr_output_refclk: in std_logic;
        ddr_output_reset: in std_logic
    );
    
end component ddr; -- sbp_module=true 
_inst: ddr port map (ddr_output_data => __,ddr_output_dout => __,ddr_output_clkout => __,
          ddr_output_refclk => __,ddr_output_reset => __);
