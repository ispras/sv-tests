// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.1 Typed formal arguments in sequence declarations

// ! TYPE: POSITIVE

module top;

reg a, b, c;

sequence s1(w, x, y);
  w ##1 x ##[2:10] y;
endsequence

sequence s2(w, y, bit x);
  w ##1 x ##[2:10] y;
endsequence

endmodule
