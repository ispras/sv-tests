// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.4 State-dependent paths
//      30.4.4.4 The ifnone condition

// ! TYPE: POSITIVE

module top(input a, b, output out);
  specify
    if (a) (b => out) = (2, 2);
    if (b) (a => out) = (2, 2);
    ifnone (a => out) = (1, 1);
    (a => out) = (1, 1);
  endspecify
endmodule
