// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.2 Simple module paths
//         The following three examples illustrate valid simple module path declarations.

// ! TYPE: POSITIVE

module test(A, B, C, D, Q);

  inout A, B, C, D, Q;

  specify
    (A => Q) = 10;
    (B => Q) = (12);
    (C, D *> Q) = 18;
  endspecify
endmodule
