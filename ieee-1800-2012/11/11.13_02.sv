// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

package let_examples;
  let mult(x, y) = ($bits(x) + $bits(y))'(x * y);
  let at_least_two(sig, rst = 1'b0) = rst || ($countones(sig) >= 2);
endpackage

task write_value;
  input logic [31:0] addr;
  input logic [31:0] value;
endtask

module top;

  import let_examples::*;

  logic [15:0] sig1;
  logic [3:0] sig2;

  logic [31:0] base_addr, displ;
  let addr = base_addr + displ;

  always_comb begin
    q1: assert (at_least_two(sig1));
    q2: assert (at_least_two(~sig2));
  end

  initial write_value(addr, 0);

endmodule
