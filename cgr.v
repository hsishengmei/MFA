module cgr #(parameter CTR_LEN = 8) (
    input CLK,
    input RST,
    input [1:0] symbol,
    output reg [15:0] addr,
    output reg clr_ram_cgr,
    output reg BC_mode
);

integer             i;
reg     [15:0]      counter_r, counter_w;
reg     [7:0]       addr_x;
reg     [7:0]       addr_y;
reg                 a, b;

always @(*) begin
    counter_w = counter_r;
    BC_mode = 0;
    clr_ram_cgr = 0;

    a = symbol[1];
    b = symbol[0];

    addr = { addr_x, addr_y };

    if (RST) begin
        counter_w = 0;
    end
    else begin
        counter_w = counter_r + 1;
    end

    if (symbol == 2'bzz) begin
        BC_mode = 0;
    end
    else begin
        BC_mode = 1;
    end
end

always @(posedge CLK or posedge RST) begin
    if (RST) begin
        counter_r <= 0;
        for (i=0; i<8; i++) begin
            addr_x[i] <= 0;
            addr_y[i] <= 0;            
        end
    end
    else begin
        counter_r <= counter_w;
	BC_mode_r <= BC_mode;

        addr_x[7] <= a;
        addr_x[6] <= addr_x[7];
        addr_x[5] <= addr_x[6];
        addr_x[4] <= addr_x[5];
        addr_x[3] <= addr_x[4];
        addr_x[2] <= addr_x[3];
        addr_x[1] <= addr_x[2];
        addr_x[0] <= addr_x[1];

        addr_y[7] <= b;
        addr_y[6] <= addr_y[7];
        addr_y[5] <= addr_y[6];
        addr_y[4] <= addr_y[5];
        addr_y[3] <= addr_y[4];
        addr_y[2] <= addr_y[3];
        addr_y[1] <= addr_y[2];
        addr_y[0] <= addr_y[1];
    end
end

endmodule
