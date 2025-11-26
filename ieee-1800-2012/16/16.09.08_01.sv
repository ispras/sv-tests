// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.8 First_match operation

// ! TYPE: POSITIVE

module top;

reg te1, te2;

sequence t1;
  te1 ## [2:5] te2;
endsequence

sequence ts1;
  first_match(te1 ## [2:5] te2);
endsequence

endmodule
