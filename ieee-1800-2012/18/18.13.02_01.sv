// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.13 Random number system functions and methods
//     18.13.2 $urandom_range()

// ! TYPE: POSITIVE

module top;

  int val;
  initial begin
    // The function shall return an unsigned integer in the range of maxval ... minval.
    val = $urandom_range(7,0);
    // If minval is omitted, the function shall return a value in the range of maxval ... 0.
    val = $urandom_range(7);
    // If maxval is less than minval, the arguments are automatically reversed
    // so that the first argument is larger than the second argument.
    val = $urandom_range(0,7);
  end

endmodule
