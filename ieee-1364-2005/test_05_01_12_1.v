// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.12 Shift operators
//        Example 1 - In this example, the reg result is assigned the binary value 0100,
//        which is 0001 shifted to the left two positions and zero-filled.

// ! TYPE: POSITIVE

module shift;

  reg [3:0] start, result;

  initial begin
    start = 1;
    result = (start << 2);
  end
endmodule
