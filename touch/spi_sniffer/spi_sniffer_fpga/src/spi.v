module spi(
    input wire clk_50m,          // 50 MHz clock input
    input wire rst_n,            // Active low reset


    input wire cs,
    input wire sck,              // Serial Clock
    input wire mosi,             // Master Out Slave In
    input wire miso,             // Master In Slave Out

    output reg cs_start,
    output reg cs_end,
    output reg data_valid,
    output reg [7:0] mosi_data,
    output reg [7:0] miso_data
);

// 打拍

reg cs_d0;
reg cs_d1;
reg cs_d2;

reg sck_d0;
reg sck_d1;
reg sck_d2;

reg mosi_d0;
reg mosi_d1;

reg miso_d0;
reg miso_d1;

always @ (posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        cs_d0 <= 1'b1;
        cs_d1 <= 1'b1;
        cs_d2 <= 1'b1;

        sck_d0 <= 1'b0;
        sck_d1 <= 1'b0;
        sck_d2 <= 1'b0;

        mosi_d0 <= 1'b0;
        mosi_d1 <= 1'b0;

        miso_d0 <= 1'b0;
        miso_d1 <= 1'b0;

    end else begin
        cs_d2 <= cs_d1;
        cs_d1 <= cs_d0;
        cs_d0 <= cs;

        sck_d2 <= sck_d1;
        sck_d1 <= sck_d0;
        sck_d0 <= sck;

        mosi_d1 <= mosi_d0;
        mosi_d0 <= mosi;

        miso_d1 <= miso_d0;
        miso_d0 <= miso;
    end
end

assign posedge_cs = (!cs_d2 && cs_d1);
assign negedge_cs = (cs_d2 && !cs_d1);

assign posedge_sck = (!sck_d2 && sck_d1);

reg [7:0] mosi_shift_reg;
reg [7:0] miso_shift_reg;

reg [2:0] bit_counter; // 3 bits for 8 bits data

always @ (posedge clk_50m or negedge rst_n) begin
    if (!rst_n) begin
        cs_start <= 1'b0;
        cs_end <= 1'b0;
        data_valid <= 1'b0;
        mosi_data <= 8'b0;
        miso_data <= 8'b0;
        bit_counter <= 3'b0;
        mosi_shift_reg <= 8'b0;
        miso_shift_reg <= 8'b0;

    end else begin

        data_valid <= 1'b0;
        cs_start <= 1'b0;
        cs_end <= 1'b0;

        // cs low active
        if (negedge_cs) begin
            cs_start <= 1'b1;
            bit_counter <= 3'b0;
            mosi_shift_reg <= 8'b0;
            miso_shift_reg <= 8'b0;
        end else if (posedge_cs) begin
            cs_end <= 1'b1;
        end

        if (cs_d1 == 1'b0) begin // cs is low
            if (posedge_sck) begin
                if (bit_counter < 3'b111) begin // 8 bits data
                    mosi_shift_reg <= {mosi_shift_reg[6:0] , mosi_d1}; // shift in mosi data
                    miso_shift_reg <= {miso_shift_reg[6:0] , miso_d1}; // shift in miso data
                    bit_counter <= bit_counter + 1'b1;
                end else begin // == 7: last bit
                    data_valid <= 1'b1;
                    mosi_data <= {mosi_shift_reg[6:0], mosi_d1}; // last bit
                    miso_data <= {miso_shift_reg[6:0], miso_d1}; // last bit
                    bit_counter <= 3'b0; // reset bit counter
                end
            end
        end
    end
end

endmodule
