// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.2 Overriding module parameter values
//       Parameter A is a typed and/or ranged parameter; therefore, when its value is redefined,
//       the parameter retains its original type and sign. Therefore, the defparam of f1.A with the
//       value 3.1415 is performed by converting the floating point number 3.1415 into a fixed-point
//       number 3, and then the low 3 bits of 3 are assigned to A. Parameter B is not a typed and/or
//       ranged parameter; therefore, when its value is redefined, the parameter type and range take
//       on the type and range of the new value. Therefore, the defparam of f1.B with the value
//       3.1415 replaces B ’s current value of 3'h2 with the floating point number 3.1415..

// ! TYPE: POSITIVE

module foo(a, b);

  input a, b;
  real r1, r2;

  parameter [2:0] A = 3'h2;
  parameter B = 3'h2;

  initial begin
    r1 = A;
    r2 = B;
    $display ("r1 is %f r2 is %f",r1, r2);
  end
endmodule // foo

module bar;

  wire a, b;

  defparam f1.A = 3.1415;
  defparam f1.B = 3.1415;

  foo f1(a, b);

endmodule // bar

