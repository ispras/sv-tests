// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.11 Math functions
//       17.11.2 Real math functions
//         Table 17-18 — Natural logarithm.

// ! TYPE: POSITIVE

module test;
  integer n, result;

  initial begin
    result = $ln(n);
  end
endmodule
