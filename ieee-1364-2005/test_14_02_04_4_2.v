// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.4 The ifnone condition
//           Example 2 — The following module path description combination is illegal because it
//           combines a state-dependent path using an ifnone condition and an unconditional path
//           for the same module path.

// ! TYPE: POSITIVE

module test(a, b, out);

  input a, b;
  output out;

  specify
    if (a) (b => out) = (2,2);
    if (b) (a => out) = (2,2);
    ifnone (a => out) = (1,1);
    (a => out) = (1,1);
  endspecify
endmodule
