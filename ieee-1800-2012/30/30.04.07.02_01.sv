// IEEE Std 1800-2012
//   30. Specify blocks
//    30.4 Module path declarations
//     30.4.7 Module path polarity
//      30.4.7.2 Positive polarity

// ! TYPE: POSITIVE

module top(input In1, s, output q);
  specify
    specparam In_to_q = 1, s_to_q = 1;
    // Positive polarity
    (In1 +=> q) = In_to_q ;
    (s +*> q) = s_to_q ;
  endspecify
endmodule
