// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.4 State-dependent paths
//      30.4.4.3 Edge-sensitive state-dependent paths

// ! TYPE: POSITIVE

module top(input clk, data, output [0:0] q);
  specify
    (posedge clk => (q[0] : data)) = (10, 5);
    (negedge clk => (q[0] : data)) = (20, 12);
  endspecify
endmodule
