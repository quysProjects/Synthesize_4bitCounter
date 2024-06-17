module fadder(
  input  logic a_i,
  input  logic b_i,
  input  logic c_i,
  output logic s_o,
  output logic c_o
);

  logic tmp1;
  logic tmp2;
  logic tmp3;

  hadder ha0(
    .a_i(a_i ),
    .b_i(b_i ),
    .s_o(tmp1),
    .c_o(tmp2)
  );

  hadder ha1(
    .a_i(tmp1),
    .b_i(c_i ),
    .s_o(s_o ),
    .c_o(tmp3)
  );

  assign s_o = tmp2^tmp3; // function bug
  assign c_o = tmp2|tmp3;

endmodule : fadder
