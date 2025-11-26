// IEEE Std 1364-2005
//   15. Timing checks
//     15.6 Enabling timing checks with conditioned events
//       Example 2 — This example shows two ways to trigger the same timing check as in Example 1
//       (on the positive clk edge) only when clr is low. The second method uses the === operator,
//       which makes the comparison deterministic.

// ! TYPE: POSITIVE

module test(data, clk);

  input data, clk;

  specify
    $setup(data, posedge clk &&& ( ~ clr), 10) ;
    $setup(data, posedge clk &&& (clr === 0), 10);
  endspecify
endmodule
