// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.3 Operators
//     11.3.3 Using integer literals in expressions

// ! TYPE: POSITIVE

module top;

  int IntA;

  initial begin
    IntA = -12 / 3; // The result is -4

    IntA = -'d 12 / 3; // The result is 1431655761

    IntA = -'sd 12 / 3; // The result is -4

    IntA = -4'sd 12 / 3; // -4'sd12 is the negative of the 4-bit
                         // quantity 1100, which is -4. -(-4) = 4
                         // The result is 1
  end

endmodule
