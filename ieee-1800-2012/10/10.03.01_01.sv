// IEEE Std 1800-2012
//   10. Assignment statements
//    10.3 Continuous assignments
//     10.3.1 The net declaration assignment

// ! TYPE: POSITIVE

module top(input enable);

  wire (strong1, pull0) mynet = enable;

endmodule
