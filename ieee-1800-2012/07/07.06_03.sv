// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.6 Array assignments

// ! TYPE: VARYING

module top;

  int A[2][100:1];
  int B[] = new[100]; // dynamic array of 100 elements
  int C[] = new[8];
  int D [3][][]; // dynamic array of 8 elements

  initial begin
    D[2] = new [2]; // multidimensional array with dynamic subarrays
    D[2][0] = new [100]; // initialize one of D's dynamic subarrays

    A[1] = B; // OK. Both are arrays of 100 ints
`ifdef NEGATIVE_TEST
    A[1] = C; // type check error: different sizes (100 vs. 8 ints)
    A = D[2]; // 'A[0:1][100:1]' and subarray 'D[2][0:1][0:99]' both
              // comprise 2 subarrays of 100 ints
`endif
  end

endmodule
