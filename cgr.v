module cgr #(parameter DATA_LEN = 3) (
    input CLK,
    input RST,
    input [1:0] symbol,
    input BC_mode,
    output reg [2*DATA_LEN:0] addr,
    output reg wen_cgr
);

integer             i;
reg     [15:0]      counter_r, counter_w;
reg     [DATA_LEN-1:0]       addr_x;
reg     [DATA_LEN-1:0]       addr_y;
reg                 a, b;

always @(*) begin

    wen_cgr = 0;
    if (BC_mode) begin 
        if (counter_r[0] == 1) begin
            if (counter_r != 1) wen_cgr = 1;
        end
    end

    counter_w = counter_r;

    a = symbol[1];
    b = symbol[0];

    addr = { addr_x, 1'b0, addr_y };

    if (RST) begin
        counter_w = 0;
    end
    else if (BC_mode) begin
        counter_w = counter_r + 1;
    end

end

always @(posedge CLK or posedge RST) begin
    if (RST) begin
        counter_r <= 0;
        for (i=0; i<DATA_LEN-1; i=i+1) begin
            addr_x[i] <= 0;
            addr_y[i] <= 0;            
        end
        addr_x[DATA_LEN-1] <= 1;
        addr_y[DATA_LEN-1] <= 1;
    end
    else begin
	counter_r <= counter_w;
        if (counter_w[0] == 0) begin
            addr_x[DATA_LEN-1:0] <= {a, addr_x[DATA_LEN-1:1]};
            addr_y[DATA_LEN-1:0] <= {b, addr_y[DATA_LEN-1:1]};
        end
    end
end

endmodule
