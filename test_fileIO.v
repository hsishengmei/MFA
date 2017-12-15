`timescale 1 ns / 1 ns

module test_fileIO ();

integer fp_r, fp_w, cnt;
reg [0:7] reg1;

reg CLK;
reg [0:3] x;
reg [0:7] y;
integer i;

always #10 CLK = ~CLK;

initial begin
    $dumpfile("test_fileIO.vcd");
    $dumpvars;
end

initial begin
    fp_r = $fopen("ttt.txt", "r");
    fp_w = $fopen("data_out.txt", "w");
    cnt = $fscanf(fp_r, "%b", reg1);
    $display("fp_r: %b", reg1[0:4]);
    $fwrite(fp_w, "%b", reg1);

    $fclose(fp_r);
    $fclose(fp_w);

    CLK = 0;
    y = 8'b10101011;
    for(i = 0; i < 8; i = i + 1) begin
        @(posedge CLK) x = y[i];
        $display("%d, %d", x, y[i]);
    end 
    $finish;
end

endmodule
