// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.11 Math functions
//       17.11.1 Integer math functions
//         The system function $clog2 shall return the ceiling of the log base 2 of the argument
//         (the log rounded up to an integer value). The argument can be an integer or an arbitrary
//         sized vector value. The argument shall be treated as an unsigned value, and an argument
//         value of 0 shall produce a result of 0.

// ! TYPE: POSITIVE

module test;
  integer n, result;

  initial begin
    result = $clog2(n);
  end
endmodule
