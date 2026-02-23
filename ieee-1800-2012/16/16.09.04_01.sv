// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.4 Global clocking past and future sampled value functions

// ! TYPE: NEGATIVE

module top(clk, a, b, c);

  input clk, a, b, c;

  // Illegal: global clocking future sampled value functions
  // shall not be nested
  a1: assert property (@clk $future_gclk(a || $rising_gclk(b));
  sequence s;
    bit v;
    (a, v = a) ##1 (b == v)[->1];
  endsequence : s

  // Illegal: a global clocking future sampled value function shall not
  // be used in an assertion containing sequence match items
  a2: assert property (@clk s |=> $future_gclk(c));

endmodule
