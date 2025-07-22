//Verilog instantiation template

mipi _inst (.mipi_rx_bd0_o(), .mipi_rx_bd1_o(), .mipi_rx_lp_hs_state_clk_o(), 
     .mipi_rx_lp_hs_state_d_o(), .mipi_rx_capture_en_o(), .mipi_rx_cd_d0_o(), 
     .mipi_rx_clk_byte_fr_i(), .mipi_rx_clk_byte_hs_o(), .mipi_rx_clk_byte_o(), 
     .mipi_rx_clk_lp_ctrl_i(), .mipi_rx_clk_n_i(), .mipi_rx_clk_p_i(), 
     .mipi_rx_d0_n_io(), .mipi_rx_d0_p_io(), .mipi_rx_d1_n_i(), .mipi_rx_d1_p_i(), 
     .mipi_rx_hs_d_en_o(), .mipi_rx_hs_sync_o(), .mipi_rx_lp_d0_rx_n_o(), 
     .mipi_rx_lp_d0_rx_p_o(), .mipi_rx_lp_d0_tx_en_i(), .mipi_rx_lp_d0_tx_n_i(), 
     .mipi_rx_lp_d0_tx_p_i(), .mipi_rx_lp_d1_rx_n_o(), .mipi_rx_lp_d1_rx_p_o(), 
     .mipi_rx_pd_dphy_i(), .mipi_rx_pll_lock_i(), .mipi_rx_reset_byte_fr_n_i(), 
     .mipi_rx_reset_byte_n_i(), .mipi_rx_reset_lp_n_i(), .mipi_rx_reset_n_i(), 
     .mipi_rx_term_clk_en_o());