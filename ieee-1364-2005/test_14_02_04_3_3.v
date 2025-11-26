// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.3 Edge-sensitive state-dependent paths
//           Example 3 — The following example shows two edge-sensitive path declarations, each of
//           which has a unique condition.

// ! TYPE: POSITIVE

module test(clk, data, q, reset, cntrl);

  input clk, reset, cntrl;
  output data;
  output [3:0] q;

  specify
    if (reset)
      (posedge clk => (q[0] : data)) = (15, 8);
    if (!reset && cntrl)
      (posedge clk => (q[0] : data)) = (6, 2);
  endspecify
endmodule
