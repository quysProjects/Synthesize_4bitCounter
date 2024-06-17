module mux8by1(D0,D1,D2,D3,D4,D5,D6,D7,s0,s1,s2,Y);
  input logic D0;
  input logic D1;
  input logic D2;
  input logic D3;
  input logic D4;
  input logic D5;
  input logic D6;
  input logic D7;
  
  input logic s0;
  input logic s1;
  input logic s2;
  
  output logic Y;

  wire logic not_s0, not_s1, not_s2;
  wire logic w0,w1,w2,w3,w4,w5,w6,w7;

  not(not_s0,s0);
  not(not_s1,s1);
  not(not_s2,s2);

  an4 a0(D0,not_s2,not_s1,not_s0,w0);
  an4 a1(D1,not_s2,not_s1,s0,w1);
  an4 a2(D2,not_s2,s1,not_s0,w2);
  an4 a3(D3,not_s2,s1,s0,w3);
  an4 a4(D4,s2,not_s1,not_s0,w4);
  an4 a5(D5,s2,not_s1,s0,w5);
  an4 a6(D6,s2,s1,not_s0,w6);
  an4 a7(D7,s2,s1,s0,w7);

  orr8 or0(w0,w1,w2,w3,w4,w5,w6,w7,Y); 

endmodule
