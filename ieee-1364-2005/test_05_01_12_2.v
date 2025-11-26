// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.12 Shift operators
//        Example 2 - In this example, the reg result is assigned the binary value 1110,
//        which is 1000 shifted to the right two positions and sign-filled.

// ! TYPE: POSITIVE

module ashift;

  reg signed [3:0] start, result;

  initial begin
    start = 4'b1000;
    result = (start >>> 2);
  end
endmodule
