// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.13 Input sampling

// ! TYPE: POSITIVE

module top(input clk, v);

  clocking cb @(negedge clk);
    input v;
  endclocking

  always @(cb) $display(cb.v);

  always @(negedge clk) $display(cb.v);

endmodule
