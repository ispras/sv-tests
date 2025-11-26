// IEEE Std 1364-2005
//   5. Expressions
//     5.5 Signed expressions
//       5.5.1 Rules for expression types
//         Part-select results are unsigned, regardless of the operands even if the part-select
//         specifies the entire vector.

// ! TYPE: POSITIVE

module test;

  reg [15:0] a;
  reg signed [7:0] b;

  initial begin
    a = b[7:0]; // b[7:0] is unsigned and therefore zero-extended
  end
endmodule
