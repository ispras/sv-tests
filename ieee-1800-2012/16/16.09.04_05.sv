// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.4 Global clocking past and future sampled value functions

// ! TYPE: POSITIVE

module top(input wire clk, input wire sig);

global clocking sys @(posedge clk); endclocking

// A '##1' is needed in 'a4' due to the corner case at cycle 0
a4: assert property (@($global_clock) ##1 $stable_gclk(sig));

endmodule
