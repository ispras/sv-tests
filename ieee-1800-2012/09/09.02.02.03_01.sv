// IEEE Std 1800-2012
//   9. Processes
//    9.2 Structured procedures
//     9.2.2 Always procedures
//      9.2.2.3 Latched logic always_latch procedure

// ! TYPE: POSITIVE

module top(input ck, d);

  logic q;

  always_latch
    if(ck) q <= d;

endmodule
