module test_top_module ();

	integer fp_r, cnt;

	reg CLK, RST;
	reg [3999:0] data;
	reg [1:0] symbol;
	reg BC_mode;
	wire done;
		
	always @(posedge CLK) begin
		data <= {2'b00, data[3999:2]};
		symbol <= data[1:0];
	end

	top_module #(.ADDR_LEN(6), .DATA_LEN(8), .BOX_IDX(3)) MAIN (
		.CLK(CLK),
		.RST(RST),
		.symbol(symbol),
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
        // BC_mode = 0;
        // repeat(16) @(posedge CLK);
	
        $finish;
    end
 

  
endmodule
