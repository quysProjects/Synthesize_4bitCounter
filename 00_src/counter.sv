module counter(
  input  logic       clk_i   ,
  input  logic       rst_ni  ,
  input  logic       sel_i,
  output logic [3:0] data_o
);

  logic [3:0] counter_q;
  logic [3:0] counter_up;
  logic [3:0] counter_down;
  logic [3:0] counter_d;

  ripple_adder count_up(
    .X(counter_q),
    .Y(4'b0000  ),
    .Cin(1'b1),
    .Co(),
    .S(counter_up)
  );

  ripple_adder count_down(
    .X(counter_q),
    .Y(4'b1111  ),
    .Cin(1'b0),
    .Co(),
    .S(counter_down)
  );

  mux2by1_4bit mux(counter_down, counter_up, sel_i, counter_d);

  always_ff @(posedge clk_i) begin
    if (!rst_ni)
      counter_q <= '0;
    else 
        counter_q <= counter_d;
      
  end

  assign data_o = counter_q;

endmodule : counter