// IEEE Std 1800-2012
//   10. Assignment statements
//    10.10 Unpacked array concatenation
//     10.10.3 Nesting of unpacked array concatenations

// ! TYPE: POSITIVE

module top;

  typedef int T_QI[$];
  T_QI jagged_array[$] = '{ {1}, T_QI'{2,3,4}, {5,6} };

  // jagged_array[0][0] = 1 -- jagged_array[0] is a queue of 1 int
  // jagged_array[1][0] = 2 -- jagged_array[1] is a queue of 3 ints
  // jagged_array[1][1] = 3
  // jagged_array[1][2] = 4
  // jagged_array[2][0] = 5 -- jagged_array[2] is a queue of 2 ints
  // jagged_array[2][1] = 6

endmodule
