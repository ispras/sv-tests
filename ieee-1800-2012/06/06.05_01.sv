// IEEE Std 1800-2012
//   6. Data types
//    6.5 Nets and variables

// ! TYPE: VARYING

module top(input clk, sel);
  struct {
    bit [7:0] A;
    bit [7:0] B;
    byte C;
  } abc;

  assign abc.C = sel ? 8'hBE : 8'hEF;

  not (abc.A[0], abc.B[0]),
      (abc.A[1], abc.B[1]),
      (abc.A[2], abc.B[2]),
      (abc.A[3], abc.B[3]);

  always @(posedge clk) abc.B <= abc.B + 1;

`ifdef NEGATIVE_TEST
  // Multiple continuous assignments to 'abc.C'
  assign abc.C = sel ? 8'hDE : 8'hED;
  // Mixing continuous and procedural assignments to 'abc.A[3]'
  always @(posedge clk) abc.A[7:3] <= !abc.B[7:3];
`endif
endmodule
