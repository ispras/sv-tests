// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators

// ! TYPE: POSITIVE

module top;

  logic log1, log2, log3;

  initial begin
    {log1, log2, log3} = 3'b111;
    {log1, log2, log3} = {1'b1, 1'b1, 1'b1}; // same effect as 3'b111
  end

endmodule
