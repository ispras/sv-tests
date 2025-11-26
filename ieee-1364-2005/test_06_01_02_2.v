// IEEE Std 1364-2005
//   6. Expressions
//     6.1 Continuous assignments
//       6.1.2 The continuous assignment statement
//         The following is an example of the use of a continuous assignment to model a 4-bit adder
//         with carry. The  assignment could not be specified directly in the declaration
//         of the nets because it requires a concatenation on the left-hand side.

// ! TYPE: POSITIVE

module adder (sum_out, carry_out, carry_in, ina, inb);

  output [3:0] sum_out;
  output carry_out;
  input [3:0] ina, inb;
  input carry_in;
  wire carry_out, carry_in;
  wire [3:0] sum_out, ina, inb;

  assign {carry_out, sum_out} = ina + inb + carry_in;
endmodule
