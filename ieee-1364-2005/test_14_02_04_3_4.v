// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.3 Edge-sensitive state-dependent paths
//           Example 4 — The two state-dependent path declarations shown below are not legal because
//           even though they have different conditions, the destinations are not specified in the
//           same way: the first destination is a part-select, the second is a bit-select.

// ! TYPE: VARYING

module test(clk, data, q, reset, cntrl);

  input clk, reset, cntrl;
  output data;
  output [4:0] q;

  specify
`ifdef NEGATIVE_TEST
    if (reset)
      (posedge clk => (q[3:0]:data)) = (10,5);
    if (!reset)
      (posedge clk => (q[0]:data)) = (15,8);
`endif
  endspecify
endmodule
