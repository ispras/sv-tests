// IEEE Std 1800-2012
//   30. Specify blocks
//    30.5 Assigning delays to module paths
//     30.5.3 Delay selection

// ! TYPE: POSITIVE

module top(input A, B, output Y);
  specify
    (A => Y) = (6, 9);
    (B => Y) = (5, 11);
  endspecify
  endmodule
