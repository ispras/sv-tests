// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.10 Shift operators

// ! TYPE: POSITIVE

module top;

  logic signed [3:0] start, result;

  initial begin
    start = 4'b1000;
    result = (start >>> 2);
  end

endmodule
