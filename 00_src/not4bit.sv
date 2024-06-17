module not4bit(X,S);
  input logic [3:0] X;
  
  output logic [3:0] S;


  not(S[0],X[0]);
  not(S[1],X[1]);
  not(S[2],X[2]);
  not(S[3],X[3]);

endmodule