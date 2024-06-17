module synth_wrapper
(
 input logic sel_i,
 input logic rst_n,clk,
 output logic [3:0] data_o
);
  reg  sel_i_reg;
  reg [3:0] data_o_reg;


 always@(posedge clk, negedge rst_n) begin
    if(!rst_n) begin
       sel_i_reg <= 1'b0;
       data_o <= 4'h0;
    end
    else begin
       sel_i_reg <= sel_i;
       data_o <= data_o_reg;
    end
 end

 counter u1(
    .clk_i(clk),
    .rst_ni(rst_n),
    .sel_i(sel_i_reg),
    .data_o(data_o_reg)
);

endmodule
