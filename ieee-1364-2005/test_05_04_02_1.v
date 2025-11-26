// IEEE Std 1364-2005
//   5. Expressions
//     5.4 Expression bit lengths
//       5.4.2 Example of expression bit-length problem
//         During the evaluation of an expression, interim results shall take the size of the
//         largest operand (in case of an assignment, this also includes the left-hand side). Care
//         has to be taken to prevent loss of a significant bit during expression evaluation. The
//         example below describes how the bit lengths of the operands could result in the loss
//         of a significant bit.

// ! TYPE: VARYING

module test;

  reg [15:0] a, b, answer; // 16-bit regs

  initial begin
`ifdef NEGATIVE_TEST
    answer = (a + b) >> 1; //will not work properly
`endif
    answer = (a + b + 0) >> 1; //will work correctly
  end

endmodule
