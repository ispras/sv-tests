// IEEE Std 1800-2012
//   10. Assignment statements
//    10.11 Net aliasing

// ! TYPE: POSITIVE

module top(inout wire [31:0] A, inout wire [31:0] B);
  alias {A[7:0], A[15:8], A[23:16], A[31:24]} = B;
endmodule
