module HSPI_Tx_en(
    input Clk,
    input Rst_n,
    input Tx_En,
    //HSPI Tx 接口
	output HTCLK,
	output reg HTREQ,
	input HTRDY,
	output reg HTVLD,
	output reg [31:0]HTD,


    input                   hspi_cts // hspi clear to send
);


reg hspi_cts_d0;
reg hspi_cts_d1;

// Synchronize htrdy signal to sys_clk
always @(posedge Clk or negedge Rst_n) begin
    if (!Rst_n) begin
        hspi_cts_d0 <= 1'b1; 
        hspi_cts_d1 <= 1'b1;
    end else begin
        hspi_cts_d0 <= hspi_cts; 
        hspi_cts_d1 <= hspi_cts_d0;
    end
end



localparam Tx_Length_Low = 2'b11;
localparam User_Define_Data = 26'b1010_1010_1010_1010_1010_1010_10;

reg [3:0]Tx_Num_Sequence;
reg Tx_Start,Tx_Done,Tx_Done_R;
reg [31:0]Tx_Data;
reg Data_Valid;
reg HTRDY_R1,HTRDY_R2;
reg [31:0]Cnt;
wire [31:0]CRC_32D;
//assign HTREQ = Tx_Start;

reg [3:0]SM_State;
localparam S_IDLE = 4'b0001;
localparam S_HEAD = 4'b0010;
localparam S_DATA = 4'b0100;
localparam S_TAIL = 4'b1000;

//assign HTD = Tx_Data;//(SM_State == S_TAIL) ? CRC_32D : Tx_Data;
assign HTCLK = Clk;

//计数器产生要发送的32位数据
always @(posedge Clk or negedge Rst_n)
begin
    if(~Rst_n)
        Cnt <= 32'd0;
    else if(SM_State == S_DATA)
        Cnt <= Cnt + 1'b1;
    else
        Cnt <= 32'd0;
end

//Tx_En启动传输
always @(posedge Clk or negedge Rst_n)
begin
    if(~Rst_n) 
        Tx_Start <= 1'b0;
    else if((SM_State == S_IDLE) && Tx_En)
        Tx_Start <= 1'b1;
    else if(SM_State == S_HEAD)
        Tx_Start <= 1'b0;
    else
        Tx_Start <= Tx_Start;
end

wire [31:0]wire_crc_in;
wire [31:0]wire_crc_out32;

//tx crc
assign wire_tx_crc_clr = (~Rst_n) | Tx_Done_R;		//CRC module reset
assign wire_crc_en = Data_Valid;//HTRDY & (SM_State == S_HEAD | SM_State == S_DATA);		//calculate CRC during header and data payload tx period
assign wire_crc_in  =  {Tx_Data[0 ], Tx_Data[1 ], Tx_Data[2 ], Tx_Data[3 ],
						Tx_Data[4 ], Tx_Data[5 ], Tx_Data[6 ], Tx_Data[7 ],
						Tx_Data[8 ], Tx_Data[9 ], Tx_Data[10], Tx_Data[11],
						Tx_Data[12], Tx_Data[13], Tx_Data[14], Tx_Data[15],
						Tx_Data[16], Tx_Data[17], Tx_Data[18], Tx_Data[19],
						Tx_Data[20], Tx_Data[21], Tx_Data[22], Tx_Data[23],
						Tx_Data[24], Tx_Data[25], Tx_Data[26], Tx_Data[27],
						Tx_Data[28], Tx_Data[29], Tx_Data[30], Tx_Data[31]
					    };
assign CRC_32D =    {~wire_crc_out32[0], ~wire_crc_out32[1], ~wire_crc_out32[2], ~wire_crc_out32[3], 
                    ~wire_crc_out32[4], ~wire_crc_out32[5], ~wire_crc_out32[6], ~wire_crc_out32[7],
                    ~wire_crc_out32[8], ~wire_crc_out32[9], ~wire_crc_out32[10], ~wire_crc_out32[11], 
                    ~wire_crc_out32[12], ~wire_crc_out32[13], ~wire_crc_out32[14], ~wire_crc_out32[15], 
                    ~wire_crc_out32[16], ~wire_crc_out32[17], ~wire_crc_out32[18], ~wire_crc_out32[19],
                    ~wire_crc_out32[20], ~wire_crc_out32[21], ~wire_crc_out32[22], ~wire_crc_out32[23],
                    ~wire_crc_out32[24], ~wire_crc_out32[25], ~wire_crc_out32[26], ~wire_crc_out32[27],
                    ~wire_crc_out32[28], ~wire_crc_out32[29], ~wire_crc_out32[30], ~wire_crc_out32[31]
                    };


crc32_32b1 m_crc32 (
	.clk(Clk),
	.rst(wire_tx_crc_clr),
	.crc_en(wire_crc_en),
	.data_in(wire_crc_in),
	.crc_out(wire_crc_out32)
);

//状态机发送数据
always @(posedge Clk or negedge Rst_n) 
begin
    if(~Rst_n) begin
        SM_State <= S_IDLE;
        Data_Valid <= 1'b0;
        Tx_Data <= 32'd0;
        Tx_Done <= 1'b0;
        Tx_Num_Sequence <= 4'd0;
    end
    else begin
        case (SM_State)
            S_IDLE: begin 
                if (Tx_Start) begin
                    SM_State <= S_HEAD;
                    HTREQ <= 1'b1;
                end
                else if(~Tx_Done) begin
                    SM_State <= S_IDLE;
                    HTREQ <= 1'b0;
                end
                else begin
                    SM_State <= S_IDLE;
                end
                Tx_Done <= 1'b0;
                Data_Valid <= 1'b0;
            end
            S_HEAD: begin
                Tx_Data <= {Tx_Length_Low,Tx_Num_Sequence,User_Define_Data};
                //读fifo需要提前准备
                if(HTRDY_R2) begin
                    Data_Valid <= 1'b1;
                    if(Tx_Num_Sequence == 4'd15)
                        Tx_Num_Sequence <= 4'd0;
                    else
                        Tx_Num_Sequence <= Tx_Num_Sequence + 1'b1;
                    SM_State <= S_DATA;
                end
                else
                    SM_State <= S_HEAD;

            end
            S_DATA: begin
                Tx_Data <= Cnt;
                Data_Valid <= 1'b1;
                if(Cnt == 32'd1023) begin
                    SM_State <= S_TAIL;
                end
                else
                    SM_State <= S_DATA;
            end
            S_TAIL: begin   //计算32位crc校验
                Tx_Data <= CRC_32D;
                Data_Valid <= 1'b1;
                Tx_Done <= 1'b1;
                SM_State <= S_IDLE;
            end
            default: SM_State <= S_IDLE;
        endcase
    end
end

	
//Tx_Done打拍
always@(posedge Clk or negedge Rst_n)
if(~Rst_n)
    Tx_Done_R <= 0;
else
    Tx_Done_R <= Tx_Done;

//HTVLD打拍
always@(posedge Clk or negedge Rst_n)
if(~Rst_n)
    HTVLD <= 0;
else
    HTVLD <= Data_Valid;

//HTRDY打拍
always@(posedge Clk or negedge Rst_n)
if(~Rst_n) begin
    HTRDY_R1 <= 0;
    HTRDY_R2 <= 0;
end
    
else begin
    HTRDY_R1 <= HTRDY;
    HTRDY_R2 <= HTRDY_R1;
end
    

//HTD打拍
always@(posedge Clk or negedge Rst_n)
if(~Rst_n)
    HTD <= 0;
else if(Tx_Done)
    HTD <= CRC_32D;
else
    HTD <= Tx_Data;

endmodule

module crc32_32b1(			//crc[31:0] = 1 + X + X^2 + X^4 + X^5 + X^7 + X^8 + X^10 + X^11 + X^12 + X^16 + X^22 + X^23 + X^26 + X^32
	input	clk,
	input	rst,
	input 	[31:0]	data_in,
	input	crc_en,
	output	[31:0]	crc_out
);

	wire  [31:0] lfsr_c;
	reg	 [31:0] lfsr_q;
	
	assign crc_out = lfsr_q;
	
	assign	lfsr_c[0] = lfsr_q[0] ^ lfsr_q[6] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[12] ^ lfsr_q[16] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[0] ^ data_in[6] ^ data_in[9] ^ data_in[10] ^ data_in[12] ^ data_in[16] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^ data_in[28] ^ data_in[29] ^ data_in[30] ^ data_in[31];
	assign	lfsr_c[1] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[9] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[24] ^ lfsr_q[27] ^ lfsr_q[28] ^ data_in[0] ^ data_in[1] ^ data_in[6] ^ data_in[7] ^ data_in[9] ^ data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[16] ^ data_in[17] ^ data_in[24] ^ data_in[27] ^ data_in[28];
	assign	lfsr_c[2] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[6] ^ data_in[7] ^ data_in[8] ^ data_in[9] ^ data_in[13] ^ data_in[14] ^ data_in[16] ^ data_in[17] ^ data_in[18] ^ data_in[24] ^ data_in[26] ^ data_in[30] ^ data_in[31];
	assign	lfsr_c[3] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[14] ^ lfsr_q[15] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[31] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[7] ^ data_in[8] ^ data_in[9] ^ data_in[10] ^ data_in[14] ^ data_in[15] ^ data_in[17] ^ data_in[18] ^ data_in[19] ^ data_in[25] ^ data_in[27] ^ data_in[31];
	assign	lfsr_c[4] = lfsr_q[0] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[6] ^ lfsr_q[8] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[15] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[8] ^ data_in[11] ^ data_in[12] ^ data_in[15] ^ data_in[18] ^ data_in[19] ^ data_in[20] ^ data_in[24] ^ data_in[25] ^ data_in[29] ^ data_in[30] ^ data_in[31];
	assign	lfsr_c[5] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[10] ^ lfsr_q[13] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[24] ^ lfsr_q[28] ^ lfsr_q[29] ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7] ^ data_in[10] ^ data_in[13] ^ data_in[19] ^ data_in[20] ^ data_in[21] ^ data_in[24] ^ data_in[28] ^ data_in[29];
	assign	lfsr_c[6] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[11] ^ lfsr_q[14] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[25] ^ lfsr_q[29] ^ lfsr_q[30] ^ data_in[1] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[7] ^ data_in[8] ^ data_in[11] ^ data_in[14] ^ data_in[20] ^ data_in[21] ^ data_in[22] ^ data_in[25] ^ data_in[29] ^ data_in[30];
	assign	lfsr_c[7] = lfsr_q[0] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[5] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[10] ^ lfsr_q[15] ^ lfsr_q[16] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[28] ^ lfsr_q[29] ^ data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[7] ^ data_in[8] ^ data_in[10] ^ data_in[15] ^ data_in[16] ^ data_in[21] ^ data_in[22] ^ data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[28] ^ data_in[29];
	assign	lfsr_c[8] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[8] ^ lfsr_q[10] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[17] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[28] ^ lfsr_q[31] ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[8] ^ data_in[10] ^ data_in[11] ^ data_in[12] ^ data_in[17] ^ data_in[22] ^ data_in[23] ^ data_in[28] ^ data_in[31];
	assign	lfsr_c[9] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[9] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[18] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[29] ^ data_in[1] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[9] ^ data_in[11] ^ data_in[12] ^ data_in[13] ^ data_in[18] ^ data_in[23] ^ data_in[24] ^ data_in[29];
	assign	lfsr_c[10] = lfsr_q[0] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[5] ^ lfsr_q[9] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[16] ^ lfsr_q[19] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[0] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[9] ^ data_in[13] ^ data_in[14] ^ data_in[16] ^ data_in[19] ^ data_in[26] ^ data_in[28] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[11] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[9] ^ lfsr_q[12] ^ lfsr_q[14] ^ lfsr_q[15] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[20] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[31] ^ data_in[0] ^ data_in[1] ^ data_in[3] ^ data_in[4] ^ data_in[9] ^ data_in[12] ^ data_in[14] ^ data_in[15] ^ data_in[16] ^ data_in[17] ^ data_in[20] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^ data_in[27] ^ data_in[28] ^ data_in[31];
	assign	lfsr_c[12] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[9] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[15] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[21] ^ lfsr_q[24] ^ lfsr_q[27] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[0] ^ data_in[1] ^ data_in[2] ^ data_in[4] ^ data_in[5] ^ data_in[6] ^ data_in[9] ^ data_in[12] ^ data_in[13] ^ data_in[15] ^ data_in[17] ^ data_in[18] ^ data_in[21] ^ data_in[24] ^ data_in[27] ^ data_in[30] ^ data_in[31];
	assign	lfsr_c[13] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[10] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[16] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[22] ^ lfsr_q[25] ^ lfsr_q[28] ^ lfsr_q[31] ^ data_in[1] ^ data_in[2] ^ data_in[3] ^ data_in[5] ^ data_in[6] ^ data_in[7] ^ data_in[10] ^ data_in[13] ^ data_in[14] ^ data_in[16] ^ data_in[18] ^ data_in[19] ^ data_in[22] ^ data_in[25] ^ data_in[28] ^ data_in[31];
	assign	lfsr_c[14] = lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[11] ^ lfsr_q[14] ^ lfsr_q[15] ^ lfsr_q[17] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[23] ^ lfsr_q[26] ^ lfsr_q[29] ^ data_in[2] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[7] ^ data_in[8] ^ data_in[11] ^ data_in[14] ^ data_in[15] ^ data_in[17] ^ data_in[19] ^ data_in[20] ^ data_in[23] ^ data_in[26] ^ data_in[29];
	assign	lfsr_c[15] = lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[12] ^ lfsr_q[15] ^ lfsr_q[16] ^ lfsr_q[18] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[24] ^ lfsr_q[27] ^ lfsr_q[30] ^ data_in[3] ^ data_in[4] ^ data_in[5] ^ data_in[7] ^ data_in[8] ^ data_in[9] ^ data_in[12] ^ data_in[15] ^ data_in[16] ^ data_in[18] ^ data_in[20] ^ data_in[21] ^ data_in[24] ^ data_in[27] ^ data_in[30];
	assign	lfsr_c[16] = lfsr_q[0] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[8] ^ lfsr_q[12] ^ lfsr_q[13] ^ lfsr_q[17] ^ lfsr_q[19] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[29] ^ lfsr_q[30] ^ data_in[0] ^ data_in[4] ^ data_in[5] ^ data_in[8] ^ data_in[12] ^ data_in[13] ^ data_in[17] ^ data_in[19] ^ data_in[21] ^ data_in[22] ^ data_in[24] ^ data_in[26] ^ data_in[29] ^ data_in[30];
	assign	lfsr_c[17] = lfsr_q[1] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[9] ^ lfsr_q[13] ^ lfsr_q[14] ^ lfsr_q[18] ^ lfsr_q[20] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[1] ^ data_in[5] ^ data_in[6] ^ data_in[9] ^ data_in[13] ^ data_in[14] ^ data_in[18] ^ data_in[20] ^ data_in[22] ^ data_in[23] ^ data_in[25] ^ data_in[27] ^ data_in[30] ^ data_in[31];
	assign	lfsr_c[18] = lfsr_q[2] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[10] ^ lfsr_q[14] ^ lfsr_q[15] ^ lfsr_q[19] ^ lfsr_q[21] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[31] ^ data_in[2] ^ data_in[6] ^ data_in[7] ^ data_in[10] ^ data_in[14] ^ data_in[15] ^ data_in[19] ^ data_in[21] ^ data_in[23] ^ data_in[24] ^ data_in[26] ^ data_in[28] ^ data_in[31];
	assign	lfsr_c[19] = lfsr_q[3] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[11] ^ lfsr_q[15] ^ lfsr_q[16] ^ lfsr_q[20] ^ lfsr_q[22] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[29] ^ data_in[3] ^ data_in[7] ^ data_in[8] ^ data_in[11] ^ data_in[15] ^ data_in[16] ^ data_in[20] ^ data_in[22] ^ data_in[24] ^ data_in[25] ^ data_in[27] ^ data_in[29];
	assign	lfsr_c[20] = lfsr_q[4] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[12] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[21] ^ lfsr_q[23] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[30] ^ data_in[4] ^ data_in[8] ^ data_in[9] ^ data_in[12] ^ data_in[16] ^ data_in[17] ^ data_in[21] ^ data_in[23] ^ data_in[25] ^ data_in[26] ^ data_in[28] ^ data_in[30];
	assign	lfsr_c[21] = lfsr_q[5] ^ lfsr_q[9] ^ lfsr_q[10] ^ lfsr_q[13] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[22] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[5] ^ data_in[9] ^ data_in[10] ^ data_in[13] ^ data_in[17] ^ data_in[18] ^ data_in[22] ^ data_in[24] ^ data_in[26] ^ data_in[27] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[22] = lfsr_q[0] ^ lfsr_q[9] ^ lfsr_q[11] ^ lfsr_q[12] ^ lfsr_q[14] ^ lfsr_q[16] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[0] ^ data_in[9] ^ data_in[11] ^ data_in[12] ^ data_in[14] ^ data_in[16] ^ data_in[18] ^ data_in[19] ^ data_in[23] ^ data_in[24] ^ data_in[26] ^ data_in[27] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[23] = lfsr_q[0] ^ lfsr_q[1] ^ lfsr_q[6] ^ lfsr_q[9] ^ lfsr_q[13] ^ lfsr_q[15] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[0] ^ data_in[1] ^ data_in[6] ^ data_in[9] ^ data_in[13] ^ data_in[15] ^ data_in[16] ^ data_in[17] ^ data_in[19] ^ data_in[20] ^ data_in[26] ^ data_in[27] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[24] = lfsr_q[1] ^ lfsr_q[2] ^ lfsr_q[7] ^ lfsr_q[10] ^ lfsr_q[14] ^ lfsr_q[16] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[30] ^ data_in[1] ^ data_in[2] ^ data_in[7] ^ data_in[10] ^ data_in[14] ^ data_in[16] ^ data_in[17] ^ data_in[18] ^ data_in[20] ^ data_in[21] ^ data_in[27] ^ data_in[28] ^ data_in[30];
	assign	lfsr_c[25] = lfsr_q[2] ^ lfsr_q[3] ^ lfsr_q[8] ^ lfsr_q[11] ^ lfsr_q[15] ^ lfsr_q[17] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[2] ^ data_in[3] ^ data_in[8] ^ data_in[11] ^ data_in[15] ^ data_in[17] ^ data_in[18] ^ data_in[19] ^ data_in[21] ^ data_in[22] ^ data_in[28] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[26] = lfsr_q[0] ^ lfsr_q[3] ^ lfsr_q[4] ^ lfsr_q[6] ^ lfsr_q[10] ^ lfsr_q[18] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[28] ^ lfsr_q[31] ^ data_in[0] ^ data_in[3] ^ data_in[4] ^ data_in[6] ^ data_in[10] ^ data_in[18] ^ data_in[19] ^ data_in[20] ^ data_in[22] ^ data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^ data_in[28] ^ data_in[31];
	assign	lfsr_c[27] = lfsr_q[1] ^ lfsr_q[4] ^ lfsr_q[5] ^ lfsr_q[7] ^ lfsr_q[11] ^ lfsr_q[19] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[29] ^ data_in[1] ^ data_in[4] ^ data_in[5] ^ data_in[7] ^ data_in[11] ^ data_in[19] ^ data_in[20] ^ data_in[21] ^ data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^ data_in[27] ^ data_in[29];
	assign	lfsr_c[28] = lfsr_q[2] ^ lfsr_q[5] ^ lfsr_q[6] ^ lfsr_q[8] ^ lfsr_q[12] ^ lfsr_q[20] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[30] ^ data_in[2] ^ data_in[5] ^ data_in[6] ^ data_in[8] ^ data_in[12] ^ data_in[20] ^ data_in[21] ^ data_in[22] ^ data_in[24] ^ data_in[25] ^ data_in[26] ^ data_in[27] ^ data_in[28] ^ data_in[30];
	assign	lfsr_c[29] = lfsr_q[3] ^ lfsr_q[6] ^ lfsr_q[7] ^ lfsr_q[9] ^ lfsr_q[13] ^ lfsr_q[21] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[25] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[31] ^ data_in[3] ^ data_in[6] ^ data_in[7] ^ data_in[9] ^ data_in[13] ^ data_in[21] ^ data_in[22] ^ data_in[23] ^ data_in[25] ^ data_in[26] ^ data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[31];
	assign	lfsr_c[30] = lfsr_q[4] ^ lfsr_q[7] ^ lfsr_q[8] ^ lfsr_q[10] ^ lfsr_q[14] ^ lfsr_q[22] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[26] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ data_in[4] ^ data_in[7] ^ data_in[8] ^ data_in[10] ^ data_in[14] ^ data_in[22] ^ data_in[23] ^ data_in[24] ^ data_in[26] ^ data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[30];
	assign	lfsr_c[31] = lfsr_q[5] ^ lfsr_q[8] ^ lfsr_q[9] ^ lfsr_q[11] ^ lfsr_q[15] ^ lfsr_q[23] ^ lfsr_q[24] ^ lfsr_q[25] ^ lfsr_q[27] ^ lfsr_q[28] ^ lfsr_q[29] ^ lfsr_q[30] ^ lfsr_q[31] ^ data_in[5] ^ data_in[8] ^ data_in[9] ^ data_in[11] ^ data_in[15] ^ data_in[23] ^ data_in[24] ^ data_in[25] ^ data_in[27] ^ data_in[28] ^ data_in[29] ^ data_in[30] ^ data_in[31];

  always @(posedge clk, posedge rst) begin
    if(rst) begin
      lfsr_q <= {32{1'b1}};
    end
    else begin
      lfsr_q <= crc_en ? lfsr_c : lfsr_q;
    end
  end // always

endmodule // crc