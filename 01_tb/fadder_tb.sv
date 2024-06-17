`timescale 1ns/10ps

module fadder_tb;

  logic a_i;
  logic b_i;
  logic c_i;
  logic s_o;
  logic c_o;

  fadder fa_dut(
    .*
  );

  task tk_expect(
    input logic c_x,
    input logic s_x
  );
    $display("[%3d] a_i = %1b, b_i = %1b, c_i = %1b, c_o = %1b, s_o = %1b, c_x = %1b, s_x = %1b", $time, a_i, b_i, c_i, c_o, s_o, c_x, s_x);
    
    assert((c_o == c_x) && (s_o == s_x)) else begin
      $display("TEST FAILED");
      $stop;
    end
  endtask

  initial begin
    #0    a_i = 1'b0; b_i = 1'b0; c_i = 1'b0; #1 tk_expect(1'b0, 1'b0);
    #49   a_i = 1'b0; b_i = 1'b0; c_i = 1'b1; #1 tk_expect(1'b0, 1'b1);
    #49   a_i = 1'b0; b_i = 1'b1; c_i = 1'b0; #1 tk_expect(1'b0, 1'b1);
    #49   a_i = 1'b0; b_i = 1'b1; c_i = 1'b1; #1 tk_expect(1'b1, 1'b0);
    #49   a_i = 1'b1; b_i = 1'b0; c_i = 1'b0; #1 tk_expect(1'b0, 1'b1);
    #49   a_i = 1'b1; b_i = 1'b0; c_i = 1'b1; #1 tk_expect(1'b1, 1'b0);
    #49   a_i = 1'b1; b_i = 1'b1; c_i = 1'b0; #1 tk_expect(1'b1, 1'b0);
    #49   a_i = 1'b1; b_i = 1'b1; c_i = 1'b1; #1 tk_expect(1'b1, 1'b1);
    #49   $display("TEST PASSED"); $finish;
  end

endmodule : fadder_tb
