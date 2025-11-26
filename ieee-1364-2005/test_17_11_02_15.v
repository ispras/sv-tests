// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.11 Math functions
//       17.11.2 Real math functions
//         Table 17-18 — sqrt(x*x+y*y).

// ! TYPE: POSITIVE

module test;
  integer x, y, result;

  initial begin
    result = $hypot(x, y);
  end
endmodule
