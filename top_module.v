`include "cgr.v"
`include "sqg.v"
`include "ram_ctrl.v"
`include "ram.v"

module top_module #(parameter ADDR_LEN = 6, DATA_LEN = 8, BOX_IDX = 3) (
	input CLK,
	input RST,
	input [1:0]  symbol,
	input BC_mode,

	output done
);

wire     [ADDR_LEN+1:0]	    cgr_wr_addr;
wire     wen_cgr;
reg     clr_ram;

wire    	[ADDR_LEN+1:0]  BC_rd_addr;
wire    	[ADDR_LEN+1:0]  BC_wr_addr;
wire    	[ADDR_LEN+1:0]  XY;
wire    	[DATA_LEN-1:0]  MLXY;
wire    	[DATA_LEN-1:0]  ML1XY;
wire    	[DATA_LEN-1:0]  wr_data;
wire    	[ADDR_LEN+1:0]  wr_addr;
wire    	[ADDR_LEN+1:0]  rd_addr;

cgr CGR (
	.CLK(CLK),
	.RST(RST),
	.symbol(symbol),
	.BC_mode(BC_mode),
	.addr(cgr_wr_addr),
	.wen_cgr(wen_cgr)
);

sqg #(.BOX_IDX(BOX_IDX)) SQG (
	.CLK(CLK),
	.RST(RST),
	.BC_mode(BC_mode),
	.x(MLXY),
	.wen_sqg(wen_sqg),
	.y(ML1XY),
	.BC_rd_addr(BC_rd_addr),
	.BC_wr_addr(BC_wr_addr)
);

ram_ctrl #(.ADDR_LEN(ADDR_LEN), .DATA_LEN(DATA_LEN)) RAM_CTRL (
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

ram #(.ADDR_LEN(ADDR_LEN), .DATA_LEN(DATA_LEN)) RAM (
	.CLK(CLK),
	.wr_data(wr_data),
	.wr_addr(wr_addr),
	.rd_addr(rd_addr),
	.wr_en(wr_en),
	.Q(MLXY)
);

endmodule
