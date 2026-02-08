// IEEE Std 1800-2012
//   31. Timing checks
//    31.7 Enabling timing checks with conditioned events

// ! TYPE: POSITIVE

module top(input data, clk, clr, set, inout clr_and_set);
  and new_gate(clr_and_set, clr, set);
  specify
    $setup(data, posedge clk &&& clr_and_set, 10);
  endspecify
endmodule
