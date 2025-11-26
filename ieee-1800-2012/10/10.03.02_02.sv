// IEEE Std 1800-2012
//   10. Assignment statements
//    10.3 Continuous assignments
//     10.3.2 The continuous assignment statement

// ! TYPE: POSITIVE

module top(sum_out, carry_out, carry_in, ina, inb);
  output [3:0] sum_out;
  output carry_out;
  input [3:0] ina, inb;
  input carry_in;

  wire carry_out, carry_in;
  wire [3:0] sum_out, ina, inb;

  assign {carry_out, sum_out} = ina + inb + carry_in;
endmodule
