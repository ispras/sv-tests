// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.8 First_match operation

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d;

  sequence t2;
    (a ##[2:3] b) or (c ##[1:2] d);
  endsequence

  sequence ts2;
    first_match(t2);
  endsequence

endmodule
