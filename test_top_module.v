module test_top_module ();

	reg CLK, RST;
	reg [3999:0] data;
	reg BC_mode;
	reg done;

	top_module MAIN #(.ADDR_LEN(16), .DATA_LEN(8), .BOX_IDX(3)) (
		.CLK(CLK),
		.RST(RST),
		.symbol_str(data),
		.BC_mode(BC_mode),

		.done(done)

	);

    initial begin
        $dumpfile("test_top_module.vcd");
        $dumpvars;
    end


	initial begin
	    fp_r = $fopen("seq.txt", "r");
	    cnt = $fscanf(fp_r, "%b", data);
    	$fclose(fp_r);
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
        BC_mode = 0; // initial value
        @(negedge RST); // wait for reset
        BC_mode = 1;
        repeat(2000) @(posedge CLK);
        BC_mode = 0;
        repeat(16) @(posedge CLK);
        $finish;
    end
   
endmodule