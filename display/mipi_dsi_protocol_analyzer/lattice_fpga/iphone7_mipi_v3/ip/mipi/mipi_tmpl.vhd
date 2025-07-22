--VHDL instantiation template

component mipi is
    port (mipi_rx_bd0_o: out std_logic_vector(15 downto 0);
        mipi_rx_bd1_o: out std_logic_vector(15 downto 0);
        mipi_rx_lp_hs_state_clk_o: out std_logic_vector(1 downto 0);
        mipi_rx_lp_hs_state_d_o: out std_logic_vector(1 downto 0);
        mipi_rx_capture_en_o: out std_logic;
        mipi_rx_cd_d0_o: out std_logic;
        mipi_rx_clk_byte_fr_i: in std_logic;
        mipi_rx_clk_byte_hs_o: out std_logic;
        mipi_rx_clk_byte_o: out std_logic;
        mipi_rx_clk_lp_ctrl_i: in std_logic;
        mipi_rx_clk_n_i: inout std_logic;
        mipi_rx_clk_p_i: inout std_logic;
        mipi_rx_d0_n_io: inout std_logic;
        mipi_rx_d0_p_io: inout std_logic;
        mipi_rx_d1_n_i: inout std_logic;
        mipi_rx_d1_p_i: inout std_logic;
        mipi_rx_hs_d_en_o: out std_logic;
        mipi_rx_hs_sync_o: out std_logic;
        mipi_rx_lp_d0_rx_n_o: out std_logic;
        mipi_rx_lp_d0_rx_p_o: out std_logic;
        mipi_rx_lp_d0_tx_en_i: in std_logic;
        mipi_rx_lp_d0_tx_n_i: in std_logic;
        mipi_rx_lp_d0_tx_p_i: in std_logic;
        mipi_rx_lp_d1_rx_n_o: out std_logic;
        mipi_rx_lp_d1_rx_p_o: out std_logic;
        mipi_rx_pd_dphy_i: in std_logic;
        mipi_rx_pll_lock_i: in std_logic;
        mipi_rx_reset_byte_fr_n_i: in std_logic;
        mipi_rx_reset_byte_n_i: in std_logic;
        mipi_rx_reset_lp_n_i: in std_logic;
        mipi_rx_reset_n_i: in std_logic;
        mipi_rx_term_clk_en_o: out std_logic
    );
    
end component mipi; -- sbp_module=true 
_inst: mipi port map (mipi_rx_bd0_o => __,mipi_rx_bd1_o => __,mipi_rx_lp_hs_state_clk_o => __,
           mipi_rx_lp_hs_state_d_o => __,mipi_rx_capture_en_o => __,mipi_rx_cd_d0_o => __,
           mipi_rx_clk_byte_fr_i => __,mipi_rx_clk_byte_hs_o => __,mipi_rx_clk_byte_o => __,
           mipi_rx_clk_lp_ctrl_i => __,mipi_rx_clk_n_i => __,mipi_rx_clk_p_i => __,
           mipi_rx_d0_n_io => __,mipi_rx_d0_p_io => __,mipi_rx_d1_n_i => __,
           mipi_rx_d1_p_i => __,mipi_rx_hs_d_en_o => __,mipi_rx_hs_sync_o => __,
           mipi_rx_lp_d0_rx_n_o => __,mipi_rx_lp_d0_rx_p_o => __,mipi_rx_lp_d0_tx_en_i => __,
           mipi_rx_lp_d0_tx_n_i => __,mipi_rx_lp_d0_tx_p_i => __,mipi_rx_lp_d1_rx_n_o => __,
           mipi_rx_lp_d1_rx_p_o => __,mipi_rx_pd_dphy_i => __,mipi_rx_pll_lock_i => __,
           mipi_rx_reset_byte_fr_n_i => __,mipi_rx_reset_byte_n_i => __,mipi_rx_reset_lp_n_i => __,
           mipi_rx_reset_n_i => __,mipi_rx_term_clk_en_o => __);
