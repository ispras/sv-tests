// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.3 Edge-sensitive state-dependent paths
//           Example 2 — The following example shows two edge-sensitive path declarations, each of
//           which has a unique edge.

// ! TYPE: POSITIVE

module test(clk, data, q);

  input clk;
  output [3:0] q;
  output data;

  specify
    (posedge clk => (q[0] : data)) = (10, 5);
    (negedge clk => (q[0] : data)) = (20, 12);
  endspecify
endmodule
