// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.5 Multidimensional arrays

// ! TYPE: POSITIVE

module top;

  int A[2][3][4], B[2][3][4], C[5][4];

  initial begin
    A[0][2] = B[1][1]; // assign a subarray composed of four ints
    A[1] = B[0]; // assign a subarray composed of three arrays of four ints each

    A = B; // assign an entire array
    A[0][1] = C[4]; // assign compatible subarray of four ints
  end

endmodule
