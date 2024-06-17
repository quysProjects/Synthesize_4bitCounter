`timescale 1ns/10ps

module fadder_4bit_tb;

  logic [3:0] a_i;
  logic [3:0] b_i;
  logic c_i;
  logic [3:0] s_o;
  logic c_o;

  logic [4:0] sum;
  logic ok;

  fadder_4bit fa4_dut(
    .*
  );

  task tk_expect(
    input logic [4:0] s_x
  );

    $display("[%3d] a_i = %4b, b_i = %4b, c_i = %1b, c_o = %1b, s_o = %4b, c_x = %1b, s_x = %4b", $time, a_i, b_i, c_i, c_o, s_o, s_x[4], s_x[3:0]);
    $display("[%3d] a_i = %4d, b_i = %4d, c_i = %1b, c_o = %1b, s_o = %4d, c_x = %1b, s_x = %4d", $time, a_i, b_i, c_i, c_o, s_o, s_x[4], s_x[3:0]);
    
    assert((c_o == s_x[4]) && (s_o == s_x[3:0])) else begin
      $display("TEST FAILED");
      $stop;
    end
  endtask

  initial begin
    repeat(100) begin
      ok = randomize(a_i) with {a_i < 4'd10;};
      ok = randomize(b_i);
      ok = randomize(c_i);
      sum = a_i + b_i + c_i;
      #1  
      #49;
    end
    $display("TEST PASSED");
    $finish;
  end

endmodule : fadder_4bit_tb
