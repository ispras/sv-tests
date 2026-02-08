// IEEE Std 1800-2012
//   31. Timing checks
//    31.7 Enabling timing checks with conditioned events

// ! TYPE: POSITIVE

module top(input data, clk, clr);
  specify
    $setup(data, posedge clk, 10);
    $setup(data, posedge clk &&& clr, 10);
  endspecify
endmodule
