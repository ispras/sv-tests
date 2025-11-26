// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.3 Edge-sensitive paths
//         The following example demonstrates an edge-sensitive path declaration with a positive
//         polarity operator. In this example, at the positive edge of clock, a module path extends
//         from clock to out using a rise delay of 10 and a fall delay of 8. The data path is from
//         in to out, and in is not inverted as it propagates to out.

// ! TYPE: POSITIVE

module test(clock, in, out);

  inout clock, in, out;

  specify
    (posedge clock => (out +: in)) = (10, 8);
  endspecify
endmodule
