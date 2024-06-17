module fadder_4bit(
  input  logic [3:0]  a_i,
  input  logic [3:0]  b_i,
  input  logic        c_i,
  output logic [3:0]  s_o,
  output logic        c_o
);

  logic [3:1] tmp;

  fadder fa0(
    .a_i(a_i[0]),
    .b_i(b_i[0]),
    .c_i(c_i   ),
    .s_o(s_o[0]),
    .c_o(tmp[1])
  );

  fadder fa1(
    .a_i(a_i[1]),
    .b_i(b_i[1]),
    .c_i(tmp[1]),
    .s_o(s_o[1]),
    .c_o(tmp[2])
  );

  fadder fa2(
    .a_i(a_i[2]),
    .b_i(b_i[2]),
    .c_i(tmp[2]),
    .s_o(s_o[2]),
    .c_o(tmp[3])
  );

  fadder fa3(
    .a_i(a_i[3]),
    .b_i(b_i[3]),
    .c_i(tmp[3]),
    .s_o(s_o[3]), // syntax bug
    .c_o(c_o)
  );

endmodule : fadder_4bit
