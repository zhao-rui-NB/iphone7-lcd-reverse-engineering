// 2025-05-27 v2 for lattice crosslink dphy data0 cd(Contention Detector) exit hs mode

module mipi_lane_state_detection(
    input sys_clk,
    input sys_rst_n,
    
    input [1:0] lp_lane_data0,
    input lp_lane_data0_cd,

    output reg hs_burst_flag  // hs burst flag
);

localparam LP00 = 2'b00;
localparam LP01 = 2'b01;
localparam LP10 = 2'b10;
localparam LP11 = 2'b11;

// 58
localparam RX_STOP = 0;
localparam RX_HS_RQST = 1;
localparam RX_HS_PRPR = 2;
localparam RX_HS_BURST = 3;

reg [3:0] rx_state;
reg [1:0] lp_data0_d;
reg lp_lane_data0_cd_d;


always @(posedge sys_clk) begin
    lp_data0_d <= lp_lane_data0;
    lp_lane_data0_cd_d <= lp_lane_data0_cd;
end


always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        rx_state <= RX_STOP;
        hs_burst_flag <= 1'b0;
    end else begin 

        case (rx_state)
            RX_STOP: begin // lp11
                hs_burst_flag <= 1'b0;
                if (lp_data0_d==LP01)
                    rx_state <= RX_HS_RQST;
                else
                    rx_state <= RX_STOP;
            end
        
            RX_HS_RQST: begin // lp01
                if (lp_data0_d==LP00)
                    rx_state <= RX_HS_PRPR;
                else
                    rx_state <= RX_HS_RQST;
            end
            
            RX_HS_PRPR: begin // lp00
                // wait T hs-settle time 
                rx_state <= RX_HS_BURST;

            end

            RX_HS_BURST: begin // lp00
                hs_burst_flag <= 1'b1; // burst flag

                if (lp_lane_data0_cd_d==1'b1)
                    rx_state <= RX_STOP;
                else
                    rx_state <= RX_HS_BURST;

            end

        endcase
    end
end



endmodule