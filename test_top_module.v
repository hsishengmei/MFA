module test_top_module ();

    integer fp_r, cnt;

    reg CLK, RST;
    reg [0:3999] data;
    reg [1:0] symbol;
    reg BC_mode;
    reg [15:0] counter_w, counter_r;
    wire done;
        
    always @(*) begin
        counter_w = counter_r;
    end

    always @(posedge CLK or posedge RST) begin
        if (~RST) begin
            counter_r <= counter_w + 1;
            if (counter_r[0] == 0) begin
                data <= {data[2:3999], 2'b00};//'
                symbol <= data[0:1];        
            end    
        end
        else begin
            counter_r <= 0;
        end
    end

    top_module #(.ADDR_LEN(6), .DATA_LEN(8), .BOX_IDX(3)) MAIN (
        .CLK(CLK),
        .RST(RST),
        .symbol(symbol),
        .BC_mode(BC_mode),

        .done(done)
    );

    initial begin
    $fsdbDumpfile("test_top_module.fsdb"); 
        $fsdbDumpvars(0, test_top_module, "+mda");
        //(6, tb);
        //$dumpfile("test_top_module.vcd");
        //$dumpvars;
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
        repeat(4004) @(posedge CLK);
        // BC_mode = 0;
        // repeat(16) @(posedge CLK);
    
        $finish;
    end
 

  
endmodule
