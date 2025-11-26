// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.3 Edge-sensitive paths
//         The following example demonstrates an edge-sensitive path declaration with a negative
//         polarity operator. In this example, at the negative edge of clock[0], a module path
//         extends from clock[0] to out using a rise delay of 10 and a fall delay of 8. The data
//         path is from in to out, and in is inverted as it propagates to out.

// ! TYPE: POSITIVE

module test(clock, in, out);

  inout [3:0] clock;
  inout in, out;

  specify
    (negedge clock[0] => (out -: in)) = (10, 8);
  endspecify
endmodule
