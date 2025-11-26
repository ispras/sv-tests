// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.2 Simple state-dependent paths
//           The following example uses state-dependent paths to describe the timing of an XOR gate.
//           In this example, the first two state-dependent paths describe a pair of output rise and
//           fall delay times when the XOR gate (x1) inverts a changing input. The last two
//           state-dependent paths describe another pair of output rise and fall delay times when
//           the XOR gate buffers a changing input.

// ! TYPE: POSITIVE

module XORgate (a, b, out);

  input a, b;
  output out;

  xor x1(out, a, b);

  specify
    specparam noninvrise = 1, noninvfall = 2;
    specparam invertrise = 3, invertfall = 4;
    if (a) (b => out) = (invertrise, invertfall);
    if (b) (a => out) = (invertrise, invertfall);
    if (~a)(b => out) = (noninvrise, noninvfall);
    if (~b)(a => out) = (noninvrise, noninvfall);
  endspecify
endmodule
