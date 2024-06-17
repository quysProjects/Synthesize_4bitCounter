module counter_tb;

  logic       clk_i;
  logic       rst_ni;
  logic       sel_i;
  logic [3:0] data_o;
  logic ok;

  synth_wrapper counter_dut(
  .clk(clk_i),
  .rst_n(rst_ni),
  .sel_i(sel_i),
  .data_o(data_o)
  );

  initial begin
    #0 clk_i = 1'b0;
    forever #50 clk_i = ~clk_i;
  end

  initial begin
    #0 rst_ni = 1'b0;
    #0 sel_i = 1'b1;
    #300 rst_ni = 1'b1;
    sel_i = 1'b0;
    #2000
    sel_i = 1'b1;

  end

endmodule : counter_tb

