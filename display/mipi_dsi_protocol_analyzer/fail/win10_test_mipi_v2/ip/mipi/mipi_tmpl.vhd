--VHDL instantiation template

component mipi is
    port (mipi_rx_data_n: inout std_logic_vector(1 downto 0);
        mipi_rx_data_p: inout std_logic_vector(1 downto 0);
        mipi_rx_q: out std_logic_vector(31 downto 0);
        mipi_rx_clk_cd: out std_logic;
        mipi_rx_clk_n: inout std_logic;
        mipi_rx_clk_p: inout std_logic;
        mipi_rx_clk_rxhsen: in std_logic;
        mipi_rx_clk_rxlpen: in std_logic;
        mipi_rx_clk_rxlpn: out std_logic;
        mipi_rx_clk_rxlpp: out std_logic;
        mipi_rx_clkhsbyte: out std_logic;
        mipi_rx_d0_cd: out std_logic;
        mipi_rx_d0_hsdeseren: in std_logic;
        mipi_rx_d0_rxhsen: in std_logic;
        mipi_rx_d0_rxlpen: in std_logic;
        mipi_rx_d0_rxlpn: out std_logic;
        mipi_rx_d0_rxlpp: out std_logic;
        mipi_rx_d0_txlpn: in std_logic;
        mipi_rx_d0_txlpp: in std_logic;
        mipi_rx_rxhsbyteclk: out std_logic;
        mipi_rx_usrstdby: in std_logic
    );
    
end component mipi; -- sbp_module=true 
_inst: mipi port map (mipi_rx_data_n => __,mipi_rx_data_p => __,mipi_rx_q => __,
           mipi_rx_clk_cd => __,mipi_rx_clk_n => __,mipi_rx_clk_p => __,mipi_rx_clk_rxhsen => __,
           mipi_rx_clk_rxlpen => __,mipi_rx_clk_rxlpn => __,mipi_rx_clk_rxlpp => __,
           mipi_rx_clkhsbyte => __,mipi_rx_d0_cd => __,mipi_rx_d0_hsdeseren => __,
           mipi_rx_d0_rxhsen => __,mipi_rx_d0_rxlpen => __,mipi_rx_d0_rxlpn => __,
           mipi_rx_d0_rxlpp => __,mipi_rx_d0_txlpn => __,mipi_rx_d0_txlpp => __,
           mipi_rx_rxhsbyteclk => __,mipi_rx_usrstdby => __);
