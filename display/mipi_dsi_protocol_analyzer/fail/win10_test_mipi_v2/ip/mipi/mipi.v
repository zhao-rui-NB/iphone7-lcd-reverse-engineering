/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif

//
// Verific Verilog Description of module mipi
//
module mipi (mipi_rx_data_n, mipi_rx_data_p, mipi_rx_q, mipi_rx_clk_cd, 
            mipi_rx_clk_n, mipi_rx_clk_p, mipi_rx_clk_rxhsen, mipi_rx_clk_rxlpen, 
            mipi_rx_clk_rxlpn, mipi_rx_clk_rxlpp, mipi_rx_clkhsbyte, mipi_rx_d0_cd, 
            mipi_rx_d0_hsdeseren, mipi_rx_d0_rxhsen, mipi_rx_d0_rxlpen, 
            mipi_rx_d0_rxlpn, mipi_rx_d0_rxlpp, mipi_rx_d0_txlpn, mipi_rx_d0_txlpp, 
            mipi_rx_rxhsbyteclk, mipi_rx_usrstdby) /* synthesis sbp_module=true */ ;
    inout [1:0]mipi_rx_data_n;
    inout [1:0]mipi_rx_data_p;
    output [31:0]mipi_rx_q;
    output mipi_rx_clk_cd;
    inout mipi_rx_clk_n;
    inout mipi_rx_clk_p;
    input mipi_rx_clk_rxhsen;
    input mipi_rx_clk_rxlpen;
    output mipi_rx_clk_rxlpn;
    output mipi_rx_clk_rxlpp;
    output mipi_rx_clkhsbyte;
    output mipi_rx_d0_cd;
    input mipi_rx_d0_hsdeseren;
    input mipi_rx_d0_rxhsen;
    input mipi_rx_d0_rxlpen;
    output mipi_rx_d0_rxlpn;
    output mipi_rx_d0_rxlpp;
    input mipi_rx_d0_txlpn;
    input mipi_rx_d0_txlpp;
    output mipi_rx_rxhsbyteclk;
    input mipi_rx_usrstdby;
    
    
    mipi_rx mipi_rx_inst (.data_n({mipi_rx_data_n}), .data_p({mipi_rx_data_p}), 
            .q({mipi_rx_q}), .clk_cd(mipi_rx_clk_cd), .clk_n(mipi_rx_clk_n), 
            .clk_p(mipi_rx_clk_p), .clk_rxhsen(mipi_rx_clk_rxhsen), .clk_rxlpen(mipi_rx_clk_rxlpen), 
            .clk_rxlpn(mipi_rx_clk_rxlpn), .clk_rxlpp(mipi_rx_clk_rxlpp), 
            .clkhsbyte(mipi_rx_clkhsbyte), .d0_cd(mipi_rx_d0_cd), .d0_hsdeseren(mipi_rx_d0_hsdeseren), 
            .d0_rxhsen(mipi_rx_d0_rxhsen), .d0_rxlpen(mipi_rx_d0_rxlpen), 
            .d0_rxlpn(mipi_rx_d0_rxlpn), .d0_rxlpp(mipi_rx_d0_rxlpp), .d0_txlpn(mipi_rx_d0_txlpn), 
            .d0_txlpp(mipi_rx_d0_txlpp), .rxhsbyteclk(mipi_rx_rxhsbyteclk), 
            .usrstdby(mipi_rx_usrstdby));
    
endmodule

