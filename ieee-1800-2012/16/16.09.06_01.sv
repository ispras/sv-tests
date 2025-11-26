// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.6 Intersection (AND with length restriction)

// ! TYPE: POSITIVE

module top;

reg te1, te2, te3, te4, te5;

sequence seq1;
  (te1 ##[1:5] te2) intersect (te3 ##2 te4 ##2 te5);
endsequence

endmodule
