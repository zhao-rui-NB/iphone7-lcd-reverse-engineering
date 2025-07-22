module mipi_lane_state_detection(
    input wire sys_clk,
    input wire sys_rst_n,
    
    input wire [1:0] lp_lane_data0_i,

    output wire hs_burst_flag  // hs burst flag
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
reg [3:0] next_rx_state;
reg [1:0] lp_data0_d;

assign hs_burst_flag = (rx_state==RX_HS_BURST) ? 1'b1 : 1'b0; 


always @(posedge sys_clk) begin
    lp_data0_d <= lp_lane_data0_i;
end        

always @(*) begin
    case (rx_state)
        RX_STOP: begin // lp11
            if (lp_data0_d==LP01)
                next_rx_state = RX_HS_RQST;
            else
                next_rx_state = RX_STOP;
        end
        
        RX_HS_RQST: begin // lp01
            if (lp_data0_d==LP00)
                next_rx_state = RX_HS_PRPR;
            else
                next_rx_state = RX_HS_RQST;
        end
        
        RX_HS_PRPR: begin // lp00
            // wait T hs-settle time 
            next_rx_state = RX_HS_BURST;

        end

        RX_HS_BURST: begin // lp00
            if (lp_data0_d==LP11)
                next_rx_state = RX_STOP;
            else
                next_rx_state = RX_HS_BURST;
        end

    endcase
end
    

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        rx_state <= RX_STOP;
    end else begin 
        rx_state <= next_rx_state;
    end
end



endmodule