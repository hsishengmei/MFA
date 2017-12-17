`include "cgr.v"
`include "sqg.v"
`include "ram_ctrl.v"
`include "ram.v"

module top_module #(parameter ADDR_LEN = 16, DATA_LEN = 8, BOX_IDX = 3) (
	input CLK,
	input RST,
	input [1:0]  symbol_str[1999:0],
	input BC_mode,

	output done

);

wire 	[1:0] 		symbol;
reg     [15:0]      counter_r, counter_w;
reg     [15:0] 		addr;
reg     wen_cgr;
wire    clr_ram;

reg    	[ADDR_LEN-1:0]  BC_rd_addr;
reg    	[ADDR_LEN-1:0]  BC_wr_addr;
reg    	[ADDR_LEN-1:0]  XY;
reg    	[DATA_LEN-1:0]  MLXY;
reg    	[DATA_LEN-1:0]  ML1XY;
reg    	[ADDR_LEN-1:0]  wr_data;
reg    	[DATA_LEN-1:0]  wr_addr;
reg    	[DATA_LEN-1:0]  rd_addr;

cgr CGR #(.DATA_LEN(2000)) (
	.CLK(CLK),
	.RST(RST),
	.symbol(symbol),
	.BC_mode(BC_mode),
	.addr(cgr_wr_addr),
	.wen_cgr(wen_cgr)
);

sqg SQG #(.BOX_IDX(BOX_IDX)) (
	.CLK(CLK),
	.RST(RST),
	.BC_mode(BC_mode),
	.x(MLXY),
	.wen_sqg(wen_sqg),
	.y(ML1XY),
	.BC_rd_addr(BC_rd_addr),
	.BC_wr_addr(BC_wr_addr)
);

ram_ctrl RAM_CTRL #(.ADDR_LEN(ADDR_LEN), .DATA_LEN(DATA_LEN)) (
    .CLK(CLK),
    .RST(RST),
    .clr_ram(clr_ram),
    .BC_mode(BC_mode),
    .wen_cgr(wen_cgr),
    .wen_sqg(wen_sqg),
    .BC_rd_addr(BC_rd_addr),
    .BC_wr_addr(BC_wr_addr), 
    .XY(cgr_wr_addr), 
    .MLXY(MLXY), 
    .ML1XY(ML1XY), 
    .wr_data(wr_data), 
    .wr_addr(wr_addr), 
    .rd_addr(rd_addr),
    .wr_en(wr_en)
);

ram RAM #(.ADDR_LEN(ADDR_LEN), .DATA_LEN(DATA_LEN)) (
	.CLK(CLK),
	.wr_data(wr_data),
	.wr_addr(wr_addr),
	.wr_en(wr_en),
	.Q(MLXY)
);

always @(*) begin
	counter_w = counter_r;
end

always @(posedge CLK or posedge RST) begin
	if (RST) begin
		counter_r <= 0;
	end
	else begin
		counter_r <= counter_w + 1;
		{symbol_str[3999:0], symbol[1:0]} <= {2'b00, symbol_str[3999:0]};
	end
end