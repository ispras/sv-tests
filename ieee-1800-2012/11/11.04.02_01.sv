// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.2 Increment and decrement operators

// ! TYPE: POSITIVE

module top;

  int i, j;

  initial begin
    i = 10;
    j = i++ + (i = i - 1);
  end

endmodule
