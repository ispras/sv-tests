// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.10 Shift operators

// ! TYPE: POSITIVE

module top;

  logic [3:0] start, result;

  initial begin
    start = 1;
    result = (start << 2);
  end

endmodule
