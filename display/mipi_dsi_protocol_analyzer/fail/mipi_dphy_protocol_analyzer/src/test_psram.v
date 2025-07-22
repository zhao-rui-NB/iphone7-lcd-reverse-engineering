module test_psram(
    input sys_clk_27,
    input sys_rst_n,

    output [1:0] O_psram_ck,
    output [1:0] O_psram_ck_n,
    inout [15:0] IO_psram_dq,
    inout [1:0] IO_psram_rwds,
    output [1:0] O_psram_cs_n,
    output [1:0] O_psram_reset_n
);


wire pll_lock;
wire sys_clk_168;
wire sys_clk; // 168 div 2 = 84Mhz

reg  [63:0] psram_write_data;
wire [63:0] psram_read_data;
wire psram_read_data_valid;
reg [20:0] psram_addr;
reg psram_cmd;
reg psram_cmd_en;
wire psram_init_calib;

reg [3:0] test_state;
reg [7:0] counter;
parameter IDLE = 4'b0000;
parameter WRITE = 4'b0001;
parameter READ = 4'b0010;
parameter CHECK = 4'b0011;
parameter DONE = 4'b0100;

Gowin_rPLL rpll_inst(
    .clkout(sys_clk_168), //output clkout
    .lock(pll_lock), //output lock
    .clkoutd(sys_clk), //output clkoutd 100Mhz
    .clkin(sys_clk_27) //input clkin
);


PSRAM_Memory_Interface_HS_Top psram_memory_interface_inst(
    .clk(sys_clk), //input clk
    .memory_clk(sys_clk_168), //input memory_clk
    .pll_lock(pll_lock), //input pll_lock
    .rst_n(sys_rst_n), //input rst_n
    .O_psram_ck(O_psram_ck), //output [1:0] O_psram_ck
    .O_psram_ck_n(O_psram_ck_n), //output [1:0] O_psram_ck_n
    .IO_psram_dq(IO_psram_dq), //inout [15:0] IO_psram_dq
    .IO_psram_rwds(IO_psram_rwds), //inout [1:0] IO_psram_rwds
    .O_psram_cs_n(O_psram_cs_n), //output [1:0] O_psram_cs_n
    .O_psram_reset_n(O_psram_reset_n), //output [1:0] O_psram_reset_n
    
    .wr_data(psram_write_data), //input [63:0] wr_data
    .rd_data(psram_read_data), //output [63:0] rd_data
    .rd_data_valid(psram_read_data_valid), //output rd_data_valid
    .addr(psram_addr), //input [20:0] addr
    .cmd(psram_cmd), //input cmd
    .cmd_en(psram_cmd_en), //input cmd_en
    .init_calib(psram_init_calib), //output init_calib
    .clk_out(), //output clk_out
    .data_mask(8'b0) //input [7:0] data_mask
);



always @ (posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        test_state <= IDLE;
        counter <= 0;
        psram_write_data <= 0;
        psram_addr <= 0;
        psram_cmd <= 0;
        psram_cmd_en <= 0;
    end else begin
        case (test_state)

            IDLE: begin
                if(psram_init_calib) begin
                    test_state <= WRITE;
                    counter <= 0;
                    psram_addr <= 21'h0;
                end
            end
            WRITE: begin
                counter <= counter + 1'b1;
                psram_cmd <= 0;
                psram_cmd_en <= 0;
                psram_write_data <= (counter<16) ? (psram_addr<<32 | counter) : 0;

                if (counter== 5'd0) begin
                    psram_cmd <= 1'b1;
                    psram_cmd_en <= 1'b1;
                end else if (counter == 5'd26) begin
                    counter <= 0;
                    if (psram_addr<(2*16)*4) begin 
                        psram_addr <= psram_addr + 2*16;
                    end else begin // finish 
                        test_state <= READ;
                        psram_addr <= 21'h0;
                    end
                end

            end

            READ: begin
                counter <= counter + 1'b1;
                psram_cmd <= 1'b0;
                psram_cmd_en <= 1'b0;

                if (counter == 5'd0) begin
                    // psram_addr <= 21'h0;
                    psram_cmd <= 1'b0;
                    psram_cmd_en <= 1'b1;
                end else if (counter >= 5'd26 && psram_read_data_valid==0) begin
                    counter <= 0;
                    if (psram_addr<2*16) begin 
                        psram_addr <= psram_addr + 2;
                    end else begin // finish 
                        test_state <= CHECK;
                    end
                end

            end

            CHECK: begin
            
            end
        endcase
    end
end



endmodule