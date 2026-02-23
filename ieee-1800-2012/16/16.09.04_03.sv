// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.4 Global clocking past and future sampled value functions

// ! TYPE: POSITIVE

module top(clk, rst, sig);

  input clk, rst, sig;

  global clocking sys @(posedge clk); endclocking

  a2: assume property(@clk
    $falling_gclk(clk) ##1 (!$falling_gclk(clk)[*1:$]) |-> $steady_gclk(sig));

endmodule
