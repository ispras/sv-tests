// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.14 Abort properties

// ! TYPE: POSITIVE

module top(clk);

  input clk;
  reg go, get, put, stop;

  assert property (@(clk) go ##1 get[*2] |-> (!stop throughout put[->2]));

endmodule
