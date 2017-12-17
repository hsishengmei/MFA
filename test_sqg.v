module test_sqg ();
   
    reg CLK, RST;
    reg [7:0] x;
    wire [7:0] y;
    wire [5:0] rd_addr, wr_addr;
    wire wen_sqg;
    reg BC_mode;    

    sqg #(.BOX_IDX(3)) MAIN (
        .CLK(CLK),
        .RST(RST),
        .BC_mode(BC_mode),
    	.x(x),
    	.wen_sqg(wen_sqg),
        .y(y),
    	.BC_rd_addr(rd_addr),
    	.BC_wr_addr(wr_addr)
    );

    initial begin
        $dumpfile("sqg.vcd");
        $dumpvars;
    end

    initial begin
	BC_mode = 1'b0;
        CLK = 1'b0;
        RST = 1'b1;
        repeat(4) #10 CLK = ~CLK;
        RST = 1'b0;
        forever #10 CLK = ~CLK; // generate a clock
    end
   
    initial begin
        x = 8'd0; // initial value
        @(negedge RST); // wait for reset
        x = 8'd16;
        repeat(8) @(posedge CLK);
        x = 8'd30;
        repeat(57) @(posedge CLK);
        $finish;
    end
   
endmodule
