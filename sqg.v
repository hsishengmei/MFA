module sqg #(parameter BOX_IDX = 3, 
    parameter MAX_BOX = 3, 
    parameter DATA_LEN = 8) (

    input CLK,
    input RST,
    input BC_mode,
    input [DATA_LEN-1:0] x,
    output reg wen_sqg,
    output reg [DATA_LEN-1:0] y,
    output reg [2*BOX_IDX:0] BC_rd_addr,
    output reg [2*BOX_IDX:0] BC_wr_addr
    // output RAM_ID
    );


    reg [DATA_LEN-1:0] x_r;
    reg [2*BOX_IDX:0] counter_r, counter_w;
    reg [BOX_IDX-1:0] count_rd_x, count_rd_y;
    reg [BOX_IDX-1:0] count_rd_x_r, count_rd_y_r;
    reg [BOX_IDX-1:0] count_wr_x, count_wr_y;
    reg [BOX_IDX-1:0] count_wr_x_r, count_wr_y_r;

    localparam MEM_START_POINT  = 2 ** MAX_BOX;

    always @(*) begin
        y = x + x_r;
        counter_w = counter_r + 1;
        wen_sqg = 0;

        BC_rd_addr[2*BOX_IDX:BOX_IDX+1] = count_rd_x_r;
        BC_rd_addr[BOX_IDX] = 0;
        BC_rd_addr[BOX_IDX-1:0] = count_rd_y_r;
	if (counter_r[BOX_IDX] == 1) BC_rd_addr[BOX_IDX] = 1;

        BC_wr_addr[2*BOX_IDX:BOX_IDX+1] = count_wr_x_r;
        BC_wr_addr[BOX_IDX] = 1;
        BC_wr_addr[BOX_IDX-1:0] = count_wr_y_r;

        count_wr_x = counter_r[BOX_IDX:2];
        count_wr_y = counter_r[2*BOX_IDX-1:BOX_IDX+1];

        if (RST | BC_mode) begin
            counter_w = 0;
            count_rd_x = -1;
            count_rd_y = 0;
	    y = 0;
        end
        else begin
            if (counter_r[1:0] == 0) begin
		count_rd_x = count_rd_x_r + 1;
                count_rd_y = count_rd_y_r;
                if (counter_r != 0) begin
		    wen_sqg = 1;
		// 2nd loop
		    if (counter_r[2*BOX_IDX] == 1) begin
			count_rd_x[BOX_IDX-1] = 0;
			count_rd_y[BOX_IDX-1] = 1;
			count_wr_x[BOX_IDX-2] = 0;
			count_wr_y[BOX_IDX-1] = 1;
		    end
		end
            end
            else if (counter_r[1:0] == 1) begin
		y = x;
                count_rd_x = count_rd_x_r - 1;
                count_rd_y = count_rd_y_r + 1;
            end
            else if (counter_r[1:0] == 2) begin
		count_rd_x = count_rd_x_r + 1;
                count_rd_y = count_rd_y_r;
            end
            else begin
                count_rd_x = count_rd_x_r + 1;
		if (count_rd_x_r == 2**BOX_IDX-1) begin
		    count_rd_y = count_rd_y_r + 1;
                end
		else begin
		    count_rd_y = count_rd_y_r - 1;
		end
	    end
	 // 2nd loop
	//    if (counter_r[2*BOX_IDX] == 1 & counter_r != -1) begin
	//	count_rd_x[BOX_IDX-1] = 0;
	//	count_rd_y[BOX_IDX-1] = 1;
	//	count_wr_x[BOX_IDX-1] = 0;
	//	count_wr_y[BOX_IDX-1] = 1;
	//    end
        end
    end

    always @(posedge CLK or posedge RST) begin
        if (RST | BC_mode) begin
            counter_r <= -1;
            x_r <= 0;
            count_rd_x_r <= -1;
            count_rd_y_r <= -1;
        count_wr_x_r <= 0;
        count_wr_y_r <= 0;
        end
        else begin
            counter_r <= counter_w;
            x_r <= y;
	    if (counter_w[1:0] == 1) begin
		x_r <= 0;
	    end
	    count_rd_x_r <= count_rd_x;
            count_rd_y_r <= count_rd_y;
        count_wr_x_r <= count_wr_x;
        count_wr_y_r <= count_wr_y;
        end
    end


endmodule
                     
