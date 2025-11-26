// IEEE Std 1364-2005
//   6. Expressions
//     6.1 Continuous assignments
//       6.1.2 The continuous assignment statement
//         The following is an example of a continuous assignment to a net that
//         has been previously declared

// ! TYPE: POSITIVE

module test;
  reg enable;
  wire  mynet;
  assign (strong1, pull0) mynet = enable;
endmodule
