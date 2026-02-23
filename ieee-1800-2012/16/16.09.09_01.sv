// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.9 Conditions over sequences

// ! TYPE: POSITIVE

module top(mclk, irdy, trdy);

  input mclk, irdy, trdy;
  reg burst_mode;

  sequence burst_rule1;
    @(posedge mclk)
    $fell(burst_mode) ##0
    ((!burst_mode) throughout (##2 ((trdy == 0) && (irdy == 0)) [*7]));
  endsequence

endmodule
