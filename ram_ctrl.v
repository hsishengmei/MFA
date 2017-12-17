module ram_ctrl #(parameter ADDR_LEN = 16, DATA_LEN = 8) 
(
    input   CLK,
    input   RST,
    input   clr_ram,
    input   BC_mode,
    input   wen_cgr,
    input   wen_sqg,
    input   [ADDR_LEN-1:0]  BC_rd_addr,
    input   [ADDR_LEN-1:0]  BC_wr_addr,
    input   [ADDR_LEN-1:0]  XY,
    input   [DATA_LEN-1:0]  MLXY,
    input   [DATA_LEN-1:0]  ML1XY,
    output  [ADDR_LEN-1:0]  wr_data,
    output  [DATA_LEN-1:0]  wr_addr,
    output  [DATA_LEN-1:0]  rd_addr,
    output  wr_en
);

integer             i;
reg                 count_en;
reg     [1:0]       wr_data_sel;
reg     [1:0]       wr_addr_sel;
reg                 rd_addr_sel;
// reg                 wr_en;
reg                 counter, counter_r;

    always @(*) begin

        wr_en = wen_cgr | wen_sqg;

        if (clr_ram) begin
            wr_addr_sel = 2;
            wr_data_sel = 0;
        end
        else if (BC_mode) begin
            wr_data_sel = 1;
            wr_addr_sel = 1;
            rd_addr_sel = 1;
        else begin
            wr_data_sel = 2;
            wr_addr_sel = 0;
            rd_addr_sel = 0;
        end

        case (wr_data_sel) 
            0:  wr_data = 0;
            1:  wr_data = MLXY + 1;
            default:  wr_data = ML1XY;
        endcase
        case (wr_addr_sel) 
            0:  wr_addr = BC_wr_addr;
            1:  wr_addr = XY;
            default:  wr_addr = counter;
        endcase
        case (rd_addr_sel) 
            0:  wr_data = BC_rd_addr;
            default:  wr_data = XY;
        endcase
    end


    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            counter <= 0;
        end
        else
            counter <= counter_r + 1;
        end
    end
endmodule



