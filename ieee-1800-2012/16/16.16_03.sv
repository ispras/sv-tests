// IEEE Std 1800-2012
//   16. Assertions
//    16.16 Clock resolution

// ! TYPE: POSITIVE

module top();

  logic a;
  logic b;
  logic clk;

  always @(posedge clk) assert property (not (a ##2 b));

endmodule
