// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.5 Using concurrent assertion statements outside procedural code

// ! TYPE: POSITIVE

module top(input clk);

  reg a, b, c;

  property rule3;
    @(posedge clk) a |-> b ##1 c;
  endproperty

  a1: assert property (rule3);

endmodule
