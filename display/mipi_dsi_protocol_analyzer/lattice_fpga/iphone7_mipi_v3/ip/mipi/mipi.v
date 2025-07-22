/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module mipi
//
module mipi (mipi_rx_bd0_o, mipi_rx_bd1_o, mipi_rx_lp_hs_state_clk_o, 
            mipi_rx_lp_hs_state_d_o, mipi_rx_capture_en_o, mipi_rx_cd_d0_o, 
            mipi_rx_clk_byte_fr_i, mipi_rx_clk_byte_hs_o, mipi_rx_clk_byte_o, 
            mipi_rx_clk_lp_ctrl_i, mipi_rx_clk_n_i, mipi_rx_clk_p_i, mipi_rx_d0_n_io, 
            mipi_rx_d0_p_io, mipi_rx_d1_n_i, mipi_rx_d1_p_i, mipi_rx_hs_d_en_o, 
            mipi_rx_hs_sync_o, mipi_rx_lp_d0_rx_n_o, mipi_rx_lp_d0_rx_p_o, 
            mipi_rx_lp_d0_tx_en_i, mipi_rx_lp_d0_tx_n_i, mipi_rx_lp_d0_tx_p_i, 
            mipi_rx_lp_d1_rx_n_o, mipi_rx_lp_d1_rx_p_o, mipi_rx_pd_dphy_i, 
            mipi_rx_pll_lock_i, mipi_rx_reset_byte_fr_n_i, mipi_rx_reset_byte_n_i, 
            mipi_rx_reset_lp_n_i, mipi_rx_reset_n_i, mipi_rx_term_clk_en_o) /* synthesis sbp_module=true */ ;
    output [15:0]mipi_rx_bd0_o;
    output [15:0]mipi_rx_bd1_o;
    output [1:0]mipi_rx_lp_hs_state_clk_o;
    output [1:0]mipi_rx_lp_hs_state_d_o;
    output mipi_rx_capture_en_o;
    output mipi_rx_cd_d0_o;
    input mipi_rx_clk_byte_fr_i;
    output mipi_rx_clk_byte_hs_o;
    output mipi_rx_clk_byte_o;
    input mipi_rx_clk_lp_ctrl_i;
    inout mipi_rx_clk_n_i;
    inout mipi_rx_clk_p_i;
    inout mipi_rx_d0_n_io;
    inout mipi_rx_d0_p_io;
    inout mipi_rx_d1_n_i;
    inout mipi_rx_d1_p_i;
    output mipi_rx_hs_d_en_o;
    output mipi_rx_hs_sync_o;
    output mipi_rx_lp_d0_rx_n_o;
    output mipi_rx_lp_d0_rx_p_o;
    input mipi_rx_lp_d0_tx_en_i;
    input mipi_rx_lp_d0_tx_n_i;
    input mipi_rx_lp_d0_tx_p_i;
    output mipi_rx_lp_d1_rx_n_o;
    output mipi_rx_lp_d1_rx_p_o;
    input mipi_rx_pd_dphy_i;
    input mipi_rx_pll_lock_i;
    input mipi_rx_reset_byte_fr_n_i;
    input mipi_rx_reset_byte_n_i;
    input mipi_rx_reset_lp_n_i;
    input mipi_rx_reset_n_i;
    output mipi_rx_term_clk_en_o;
    
    
    mipi_rx mipi_rx_inst (.bd0_o({mipi_rx_bd0_o}), .bd1_o({mipi_rx_bd1_o}), 
            .lp_hs_state_clk_o({mipi_rx_lp_hs_state_clk_o}), .lp_hs_state_d_o({mipi_rx_lp_hs_state_d_o}), 
            .capture_en_o(mipi_rx_capture_en_o), .cd_d0_o(mipi_rx_cd_d0_o), 
            .clk_byte_fr_i(mipi_rx_clk_byte_fr_i), .clk_byte_hs_o(mipi_rx_clk_byte_hs_o), 
            .clk_byte_o(mipi_rx_clk_byte_o), .clk_lp_ctrl_i(mipi_rx_clk_lp_ctrl_i), 
            .clk_n_i(mipi_rx_clk_n_i), .clk_p_i(mipi_rx_clk_p_i), .d0_n_io(mipi_rx_d0_n_io), 
            .d0_p_io(mipi_rx_d0_p_io), .d1_n_i(mipi_rx_d1_n_i), .d1_p_i(mipi_rx_d1_p_i), 
            .hs_d_en_o(mipi_rx_hs_d_en_o), .hs_sync_o(mipi_rx_hs_sync_o), 
            .lp_d0_rx_n_o(mipi_rx_lp_d0_rx_n_o), .lp_d0_rx_p_o(mipi_rx_lp_d0_rx_p_o), 
            .lp_d0_tx_en_i(mipi_rx_lp_d0_tx_en_i), .lp_d0_tx_n_i(mipi_rx_lp_d0_tx_n_i), 
            .lp_d0_tx_p_i(mipi_rx_lp_d0_tx_p_i), .lp_d1_rx_n_o(mipi_rx_lp_d1_rx_n_o), 
            .lp_d1_rx_p_o(mipi_rx_lp_d1_rx_p_o), .pd_dphy_i(mipi_rx_pd_dphy_i), 
            .pll_lock_i(mipi_rx_pll_lock_i), .reset_byte_fr_n_i(mipi_rx_reset_byte_fr_n_i), 
            .reset_byte_n_i(mipi_rx_reset_byte_n_i), .reset_lp_n_i(mipi_rx_reset_lp_n_i), 
            .reset_n_i(mipi_rx_reset_n_i), .term_clk_en_o(mipi_rx_term_clk_en_o));
    
endmodule

