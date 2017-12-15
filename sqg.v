module sqg #(parameter BOX_IDX = 3) (

    input CLK,
    input RST,
    input BC_mode,
    input [7:0] x,
    output reg wen_sqg,
    output reg [7:0] y,
    output reg [2*BOX_IDX-1:0] BC_rd_addr,
    output reg [2*BOX_IDX-3:0] BC_wr_addr,
    output reg [3:0] next_box_len
    );


    reg [7:0] x_r;
    reg [2*BOX_IDX-1:0] counter_r, counter_w;
    reg [BOX_IDX-1:0] count_rd_x, count_rd_y;
    reg [BOX_IDX-1:0] count_rd_x_r, count_rd_y_r;
    reg [BOX_IDX-2:0] count_wr_x, count_wr_y;

    always @(*) begin
	next_box_len = BOX_IDX - 1;
        y = x + x_r;
        counter_w = counter_r + 1;
        wen_sqg = 0;
        BC_rd_addr = { count_rd_x, count_rd_y };
        BC_wr_addr = { count_wr_x, count_wr_y };
        
	count_wr_x = count_rd_x[BOX_IDX-1:1];
	count_wr_y = count_rd_y[BOX_IDX-1:1];

        if (RST | BC_mode) begin
            counter_w = 0;
            count_rd_x = -1;
            count_rd_y = 0;
        end
        else begin
            if (counter_r[1:0] == 0) begin
                count_rd_x = count_rd_x_r + 1;
                count_rd_y = count_rd_y_r - 1;
                if (counter_r != 0) begin                    
                    if (counter_r[BOX_IDX:0] == 0) begin
                        count_rd_x = count_rd_x_r + 1 - (1<<BOX_IDX);
                        count_rd_y = count_rd_y_r + 1;
                    end
                end
                y = x;
            end
            else if (counter_r[1:0] == 1) begin
                count_rd_x = count_rd_x_r + 1;
                count_rd_y = count_rd_y_r;
            end
            else if (counter_r[1:0] == 2) begin
                count_rd_x = count_rd_x_r - 1;
                count_rd_y = count_rd_y_r + 1;
            end
            else begin
                count_rd_x = count_rd_x_r + 1;
                count_rd_y = count_rd_y_r;
                wen_sqg = 1;
            end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST | BC_mode) begin
            counter_r <= 0;
            x_r <= 0;
            count_rd_x_r <= -1;
            count_rd_y_r <= 1;
        end
        else begin
            counter_r <= counter_w;
            x_r <= y;
            count_rd_x_r <= count_rd_x;
            count_rd_y_r <= count_rd_y;
        end
    end


endmodule
                     