// IEEE Std 1364-2005
//   5. Expressions
//     5.4 Expression bit lengths
//       For example, should an arithmetic add of two 16-bit values perform the evaluation using
//       16 bits, or should the evaluation use 17 bits in order to allow for a possible carry
//       overflow? The answer depends on the type of device being modeled and whether that device
//       handles carry overflow. The Verilog HDL uses the bit length of the operands to determine
//       how many bits to use while evaluating an expression. The bit length rules are given in
//       5.4.1. In the case of the addition operator, the bit length of the largest operand,
//       including the left-hand side of an assignment, shall be used.

// ! TYPE: POSITIVE

module test;

  reg [15:0] a, b; // 16-bit regs
  reg [15:0] sumA; // 16-bit reg
  reg [16:0] sumB; // 17-bit reg

  initial begin
    sumA = a + b; // expression evaluates using 16 bits
    sumB = a + b; // expression evaluates using 17 bits
  end

endmodule
