// IEEE Std 1364-2005
//   15. Timing checks
//     15.6 Enabling timing checks with conditioned events
//       Example 1 — To illustrate the difference between conditioned and unconditioned timing
//       check events, consider the following example with unconditioned timing check.

// ! TYPE: POSITIVE

module test(data, clk);

  input data, clk;

  specify
    $setup(data, posedge clk, 10);

    // To trigger the setup check on the positive edge on the signal clk only when the signal clr
    // is high, rewrite the command as:
    $setup(data, posedge clk &&& clr, 10);

  endspecify
endmodule
