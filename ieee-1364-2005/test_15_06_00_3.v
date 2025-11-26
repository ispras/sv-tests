// IEEE Std 1364-2005
//   15. Timing checks
//     15.6 Enabling timing checks with conditioned events
//       Example 3 — To perform the previous sample setup check on the positive clk edge only when
//       clr and set are high, add the following statement outside the specify block.

// ! TYPE: POSITIVE

module test(input clk, data, clr, set, inout clr_and_set);

  and new_gate(clr_and_set, clr, set);

  specify
    // Then add the condition to the timing check using the signal clr_and_set as follows
    $setup(data, posedge clk &&& clr_and_set, 10);
  endspecify
endmodule
