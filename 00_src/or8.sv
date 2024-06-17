module orr8(X0,X1,X2,X3,X4,X5,X6,X7,Y);
  input logic X0;
  input logic X1;
  input logic X2;
  input logic X3;
  input logic X4;
  input logic X5;
  input logic X6;
  input logic X7;

  output logic Y;

  wire logic w1,w2,w3,w4,w5,w6;

  or(w1,X0,X1);
  or(w2,w1,X2);
  or(w3,w2,X3);
  or(w4,w3,X4);
  or(w5,w4,X5);
  or(w6,w5,X6);
  or(Y,w6,X7);

endmodule