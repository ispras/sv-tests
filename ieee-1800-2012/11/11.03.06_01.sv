// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.3 Operators
//     11.3.6 Assignment within an expression

// ! TYPE: POSITIVE

module top;

  reg a, b, c;

  initial begin
    if ((a = b)) b = (a += 1);

    a = (b = (c = 5));
  end

endmodule
