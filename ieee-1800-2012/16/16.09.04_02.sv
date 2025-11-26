// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.4 Global clocking past and future sampled value functions

// ! TYPE: POSITIVE

module top(clk, rst, sig);

input clk, rst, sig;

global clocking sys @(posedge clk); endclocking

a1: assert property (@clk $changing_gclk(sig) |-> $falling_gclk(clk))
  else $display("sig is not stable");

endmodule
