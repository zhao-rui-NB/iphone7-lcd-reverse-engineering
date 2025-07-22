module hspi_sender(
    input                   sys_clk,
    input                   sys_rst_n,


    // input                   neg_test_key,

    // hspi interface
    output                  htclk,
    output reg              htreq,
    input                   htrdy,
    output reg              htvld,
    output  [31:0]          htd,

    input                   hspi_cts, // hspi clear to send

    // fifo interface 
    output reg              output_fifo_read_en,
    input [31:0]            output_fifo_read_data,
    input                   output_fifo_emtpy
);

assign htclk = sys_clk; // Use sys_clk as htclk

reg htrdy_d0;
reg htrdy_d1;

reg hspi_cts_d0;
reg hspi_cts_d1;

// Synchronize htrdy signal to sys_clk
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        htrdy_d0 <= 1'b0;
        htrdy_d1 <= 1'b0;
        hspi_cts_d0 <= 1'b1; 
        hspi_cts_d1 <= 1'b1;
    end else begin
        htrdy_d0 <= htrdy;
        htrdy_d1 <= htrdy_d0;
        hspi_cts_d0 <= hspi_cts; 
        hspi_cts_d1 <= hspi_cts_d0;
    end
end


reg crc_rst;
wire crc_en;
wire [31:0] crc_data_in;
wire [31:0] crc_data_out;

wire [31:0] crc_in_rv;
wire [31:0] crc_out_rv;

assign crc_en = htvld;
assign crc_data_in = htd;

genvar i;
generate
    for (i=0 ; i< 32 ; i=i+1) begin : crc_loop
        assign crc_in_rv[i] = crc_data_in[31-i];
        assign crc_data_out[i] = ~crc_out_rv[31-i];
    end
endgenerate

crc32_32b u_crc32_32b(
    .clk     	(sys_clk    ),
    .rst     	(crc_rst    ),
    .data_in 	(crc_in_rv  ),
    .crc_en  	(crc_en     ),
    .crc_out 	(crc_out_rv )
);

reg [3:0] state;
reg [3:0] tx_seq;
reg [11:0] payload_counter;
reg [31:0] htd_data;


reg [31:0] delay_cnt;
reg [31:0] test_hd_data;
// 4096 byte, each clk send 4 byte
// parameter PAYLOAD_LEN = 4096/4;
parameter PAYLOAD_LEN = 16/4; // test 

localparam STATE_IDLE               = 0;
localparam STATE_REQ                = 1;
localparam STATE_HEADER             = 2;
localparam STATE_PAYLOAD_WAIT_FIFO  = 3;
localparam STATE_SEND_PAYLOAD       = 4;
localparam STATE_CRC                = 5;
localparam STATE_CRC_SEND           = 6;
localparam STATE_CRC_WAIT           = 8;

localparam STATE_WAIT_MCU = 7;

reg htd_out_crc_flag;
assign htd = (htd_out_crc_flag) ?  crc_data_out : htd_data;
// assign htd = htd_data;

always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= STATE_IDLE;
        htreq <= 0;
        htvld <= 0;
        htd_data <= 1;

        crc_rst <= 1;

        output_fifo_read_en <= 0;

        tx_seq <= 0;

        htd_out_crc_flag <= 0;

        delay_cnt <= 0;
        test_hd_data <= 1;
    end else begin
        case(state)
            STATE_IDLE: begin 
                htreq <= 0;
                htvld <= 0;
                htd_data <= 0;

                output_fifo_read_en <= 0;
                payload_counter <= 0;
                crc_rst <= 1;
                
                delay_cnt <= 0;

                htd_out_crc_flag <= 0; 
                
                if (hspi_cts_d1==0 && htrdy_d1 ==0 && !output_fifo_emtpy) begin // have data and clear to send
                    state <= STATE_REQ;
                end
            end

            STATE_REQ: begin
                htreq <= 1;
                htvld <= 0;
                htd_data <= 0;
                crc_rst <=0;
                if (htrdy_d1==1) begin
                    state <= STATE_HEADER;
                end
            end

            STATE_HEADER: begin
                htvld <= 1;
                htd_data <= {2'b11 , tx_seq , 26'b0};
                tx_seq <= tx_seq + 1'b1;
                // state <= STATE_PAYLOAD_WAIT_FIFO;
                output_fifo_read_en <= 1;
                state <= STATE_SEND_PAYLOAD; 
            end

            STATE_PAYLOAD_WAIT_FIFO: begin
                htvld <= 0;
                htd_data <= 0;
                if (!output_fifo_emtpy) begin
                    output_fifo_read_en <= 1;
                    state <= STATE_SEND_PAYLOAD;
                end

            end

            STATE_SEND_PAYLOAD: begin
                htvld <= 1;
                // htd_data <= output_fifo_read_data;
        // test_hd_data <= test_hd_data + 1;
        test_hd_data <= {test_hd_data[30:0] , test_hd_data[31]};
        htd_data <= test_hd_data;


                payload_counter <= payload_counter + 1;

                if (payload_counter==PAYLOAD_LEN-1) begin // packet send finish
                // if (payload_counter==63) begin // packet send finish
                    output_fifo_read_en <= 0;
                    state <= STATE_CRC;
                end else if (output_fifo_emtpy) begin // fifo no data, stop read
                    output_fifo_read_en <= 0;
                    state <= STATE_PAYLOAD_WAIT_FIFO;
                end
            end

            STATE_CRC: begin
                htvld <= 1;
                // htd_data <= 0; // htd ctrl from crc
                htd_out_crc_flag <= 1;
                // htd_data <= crc_data_out;
                state <= STATE_WAIT_MCU;
            end

            // STATE_CRC_WAIT: begin
            //     htvld <= 0;
            //     htd_data <= 0;
            //     // state <= STATE_IDLE;
            //     state <= STATE_CRC_SEND;
            // end

            // STATE_CRC_SEND: begin
            //     htvld <= 1;
            //     htd_data <= ~crc_data_out;
            //     state <= STATE_WAIT_MCU;
            // end

            STATE_WAIT_MCU: begin
                htreq <= 0;
                htvld <= 0;
                htd_data <= 0;
                htd_out_crc_flag <= 0; 
                delay_cnt <= delay_cnt + 1'b1;
                if (delay_cnt >= 25000000) begin
                    state <= STATE_IDLE;        

                end
            end
                 
        endcase
    end
end



endmodule