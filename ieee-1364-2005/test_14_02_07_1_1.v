// IEEE Std 1364-2005
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.7 Module path polarity
//         14.2.7.1 Unknown polarity

// ! TYPE: POSITIVE

module test(In1, s, q);

  input In1, s;
  output q;

  specify
    specparam In_to_q = 100, s_to_q = 100;
    // Unknown polarity
    (In1 => q) = In_to_q;
    (s   *> q) = s_to_q;
  endspecify
endmodule
