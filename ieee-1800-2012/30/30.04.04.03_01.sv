// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.4 State-dependent paths
//      30.4.4.3 Edge-sensitive state-dependent paths

// ! TYPE: POSITIVE

module top(input clock, in, reset, clear, output out);
  specify
    if (!reset && !clear) (posedge clock => (out +: in)) = (10, 8);
  endspecify
endmodule
