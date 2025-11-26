// IEEE Std 1364-2005
//   6. Expressions
//     6.1 Continuous assignments
//       6.1.1 The net declaration assignment
//         The following is an example of the net declaration form of a continuous assignment

// ! TYPE: POSITIVE

module test;
  reg enable;
  wire (strong1, pull0) mynet = enable;
endmodule
