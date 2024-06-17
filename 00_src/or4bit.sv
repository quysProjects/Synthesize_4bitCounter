module or4bit(X,Y,S);
  input logic [3:0] X;
  input logic [3:0] Y;

  output logic [3:0] S; 


  or(S[0],Y[0],X[0]);
  or(S[1],Y[1],X[1]);
  or(S[2],Y[2],X[2]);
  or(S[3],Y[3],X[3]);

endmodule