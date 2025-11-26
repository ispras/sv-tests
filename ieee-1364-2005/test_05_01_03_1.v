// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.3 Using integer numbers in expressions

// ! TYPE: POSITIVE

module test;

  integer IntA;

  initial begin
    IntA = -12 / 3;      // The result is -4.
    IntA = -'d 12 / 3;   // The result is 1431655761.
    IntA = -'sd 12 / 3;  // The result is -4.
    IntA = -4'sd 12 / 3; // -4'sd12 is the negative of the 4-bit
                         // quantity 1100, which is -4. -(-4) = 4.
                         // The result is 1.
  end
endmodule
