// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         The following example show the use of the comma (,) as an event logical or operator.

// ! TYPE: POSITIVE

module test(a, b, c, d, e);

  input a, b, c, d, e;
  reg r, regc;

  always @(a or b, c, d or e) begin
    r = regc;
  end
endmodule
