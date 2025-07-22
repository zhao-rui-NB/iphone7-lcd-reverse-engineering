--VHDL instantiation template

component fifo is
    port (dphy_raw_fifo_Data: in std_logic_vector(31 downto 0);
        dphy_raw_fifo_Q: out std_logic_vector(31 downto 0);
        dphy_raw_fifo_RCNT: out std_logic_vector(5 downto 0);
        dphy_raw_fifo_WCNT: out std_logic_vector(5 downto 0);
        dphy_raw_fifo_Empty: out std_logic;
        dphy_raw_fifo_Full: out std_logic;
        dphy_raw_fifo_RPReset: in std_logic;
        dphy_raw_fifo_RdClock: in std_logic;
        dphy_raw_fifo_RdEn: in std_logic;
        dphy_raw_fifo_Reset: in std_logic;
        dphy_raw_fifo_WrClock: in std_logic;
        dphy_raw_fifo_WrEn: in std_logic
    );
    
end component fifo; -- sbp_module=true 
_inst: fifo port map (dphy_raw_fifo_Data => __,dphy_raw_fifo_Q => __,dphy_raw_fifo_RCNT => __,
           dphy_raw_fifo_WCNT => __,dphy_raw_fifo_Empty => __,dphy_raw_fifo_Full => __,
           dphy_raw_fifo_RPReset => __,dphy_raw_fifo_RdClock => __,dphy_raw_fifo_RdEn => __,
           dphy_raw_fifo_Reset => __,dphy_raw_fifo_WrClock => __,dphy_raw_fifo_WrEn => __);
