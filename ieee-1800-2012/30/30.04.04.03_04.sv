// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.4 State-dependent paths
//      30.4.4.3 Edge-sensitive state-dependent paths

// ! TYPE: NEGATIVE

module top(input clk, data, reset, output [3:0] q);
  specify
    if (reset)
      (posedge clk => (q[3:0] : data)) = (10, 5);
    if (!reset)
      (posedge clk => (q[0] : data)) = (15, 8);
  endspecify
endmodule
