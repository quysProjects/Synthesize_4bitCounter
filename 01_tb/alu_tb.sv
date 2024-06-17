module alu_tb;
   logic [3:0] a;
   logic [3:0] b;
   logic [2:0] op;
   logic rst_n;
   logic clk;
   logic [3:0] result;
   logic carry;
   synth_wrapper alu(
	.a(a),
	.b(b),
        .rst_n(rst_n),
        .clk(clk),
	.op(op),
	.result(result),
	.carry(carry)
   );
initial begin
#0 clk=1'b0;
end
always #5 clk=~clk;
initial begin

#0 rst_n=1'b1;  a = 4'd5; b = 4'd10; op = 3'b000; 
#10 a = 4'd10; b = 4'd3; op = 3'b001; 
#10 a = 4'b1111; b = 4'b0010; op = 3'b010;
#10 a = 4'd11 ; b = 4'd3 ; op = 3'b011;
#10 a = 4'd12; b = 4'd5; op = 3'b100;
#10 a = 4'd2; b = 4'd2; op = 3'b111;
#10 a = 4'd2; b = 4'd2; op = 3'b110;
end
endmodule 
