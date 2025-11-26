// IEEE Std 1800-2012
//   10. Assignment statements
//    10.3 Continuous assignments
//     10.3.2 The continuous assignment statement

// ! TYPE: POSITIVE

module top(input enable);

  wire mynet ;
  assign (strong1, pull0) mynet = enable;

endmodule
