// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.4 Global clocking past and future sampled value functions

// ! TYPE: POSITIVE

module top(input clk, sig);

  global clocking sys @(posedge clk); endclocking

  // In 'a5', there is no issue at cycle 0
  a5: assert property (@($global_clock) $steady_gclk(sig));

endmodule
