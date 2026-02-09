// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.2 Simple module paths

// ! TYPE: POSITIVE

module top(input A, B, C, D, output Q);
  specify
    (A => Q) = 10;
    (B => Q) = (12);
    (C, D *> Q) = 18;
  endspecify
endmodule
