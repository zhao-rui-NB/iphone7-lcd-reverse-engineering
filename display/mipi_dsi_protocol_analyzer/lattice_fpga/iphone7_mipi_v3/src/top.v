module top(
    // clock and reset
    input wire clk,
    input wire rst_n,

    // mipi interface
    inout wire mipi_rx_clk_n_i,
    inout wire mipi_rx_clk_p_i,
    inout wire mipi_rx_d0_n_io,
    inout wire mipi_rx_d0_p_io,
    inout wire mipi_rx_d1_n_i,
    inout wire mipi_rx_d1_p_i,

    // ddr output interface
    output wire ddr_output_clk,
    output wire [16:0] ddr_data_out

);

    wire byte_hs_clk;
    wire [15:0] lane0_data_out;
    wire [15:0] lane1_data_out;
    wire lane_data_out_valid;
    mipi mipi_rx (
        // mipi interface
        .mipi_rx_clk_n_i    (   mipi_rx_clk_n_i ),
        .mipi_rx_clk_p_i    (   mipi_rx_clk_p_i ),
        .mipi_rx_d0_n_io    (   mipi_rx_d0_n_io ),
        .mipi_rx_d0_p_io    (   mipi_rx_d0_p_io ),
        .mipi_rx_d1_n_i     (   mipi_rx_d1_n_i  ),
        .mipi_rx_d1_p_i     (   mipi_rx_d1_p_i  ),

        // clock and reset
        .mipi_rx_reset_n_i         (rst_n       ),
        .mipi_rx_clk_byte_fr_i     (byte_hs_clk         ),
        .mipi_rx_reset_byte_fr_n_i (1'b1        ), // reset in clk_byte_fr_i domain
        .mipi_rx_clk_lp_ctrl_i     (clk        ), // detects the lp state of the clock lane, period smaller than tLPX
        .mipi_rx_reset_lp_n_i      (1'b1        ), // reset in clk_lp_ctrl_i, if HS_ONLY mode, this signal is not used
        .mipi_rx_clk_byte_o        (            ), // byte clock active when data lane in hs mode
        .mipi_rx_reset_byte_n_i    (1'b1        ), 
        .mipi_rx_clk_byte_hs_o     (byte_hs_clk ), // byte clock active when clock lane in hs mode, may connect to clk_byte_fr_i
        .mipi_rx_pd_dphy_i         (1'b0        ), // power down

        // fabric interface low power 
        .mipi_rx_lp_d0_rx_p_o(),
        .mipi_rx_lp_d0_rx_n_o(),
        .mipi_rx_lp_d1_rx_p_o(),
        .mipi_rx_lp_d1_rx_n_o(),

        .mipi_rx_lp_d0_tx_p_i   (1'b0  ),
        .mipi_rx_lp_d0_tx_n_i   (1'b0  ),
        .mipi_rx_lp_d0_tx_en_i  (1'b0  ),

        // fabric interface (without packet parser)
        .mipi_rx_bd0_o          (lane0_data_out),
        .mipi_rx_bd1_o          (lane1_data_out),
        .mipi_rx_capture_en_o   (lane_data_out_valid),

        // miscellaneous signals (debug)
        .mipi_rx_pll_lock_i         (1'b1),
        .mipi_rx_term_clk_en_o      (),
        .mipi_rx_hs_d_en_o          (),
        .mipi_rx_cd_d0_o            (),
        .mipi_rx_hs_sync_o          (),
        .mipi_rx_lp_hs_state_clk_o  (),
        .mipi_rx_lp_hs_state_d_o    ()
);


ddr_output ddr_output_inst(
    .clkout ( ddr_output_clk  ),
    .refclk ( byte_hs_clk ),
  
    .reset  ( ~rst_n          ),
    .data   ( { lane_data_out_valid, lane1_data_out, lane_data_out_valid, lane0_data_out } ),
    .dout   ( ddr_data_out )
);

endmodule






