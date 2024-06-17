module mux2by1_4bit(in0, in1, sel, out);
   input logic [3:0] in0;
   input logic [3:0] in1;
   input logic sel;

   output logic [3:0] out;

   // sel =1 lay in1
   mux2by1 mux0(in0[0],in1[0],sel,out[0]);
   mux2by1 mux1(in0[1],in1[1],sel,out[1]);
   mux2by1 mux2(in0[2],in1[2],sel,out[2]);
   mux2by1 mux3(in0[3],in1[3],sel,out[3]);
   
endmodule // mux2to1_8