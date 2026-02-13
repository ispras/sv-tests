// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.2 Value parameters
//      6.20.2.1 $ as a parameter value

// ! TYPE: POSITIVE

module top(input clk, a, b, c, d);
  parameter r2 = $;

  property inql(r1, r2);
    @(posedge clk) a ##[r1:r2] b ##1 c |=> d;
  endproperty

  assert property (inql(3, r2));
endmodule
