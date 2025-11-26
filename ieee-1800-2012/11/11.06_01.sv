// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.6 Expression bit lengths

// ! TYPE: POSITIVE

module top;

  logic [15:0] a, b; // 16-bit variables
  logic [15:0] sumA; // 16-bit variable
  logic [16:0] sumB; // 17-bit variable

  initial begin
    sumA = a + b; // expression evaluates using 16 bits
    sumB = a + b; // expression evaluates using 17 bits
  end

endmodule
