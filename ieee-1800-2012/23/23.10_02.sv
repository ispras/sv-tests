// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.10 Overriding module parameters

// ! TYPE: POSITIVE

module m1 (a, b);
  real r1, r2;
  output a, b;
  parameter [2:0] A = 3'h2;
  parameter B = 3'h2;
  initial begin
    r1 = A;
    r2 = B;
    $display("r1 is %f r2 is %f", r1, r2);
  end
endmodule: m1

module top;
  wire a, b;
  defparam f1.A = 3.1415;
  defparam f1.B = 3.1415;
  m1 f1(a, b);
endmodule
