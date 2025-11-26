// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: VARYING

module top;

  int arr1 [][2][3] = new [4]; // 'arr1' sized to length 4; elements are
                               // fixed-size arrays and so do not require initializing
  int arr2 [][] = new [4]; // 'arr2' sized to length 4; dynamic subarrays
                           // remain unsized and uninitialized
`ifdef NEGATIVE_TEST
  int arr3 [1][2][] = new [4]; // Error – arr3 is not a dynamic array, though
                               // it contains dynamic subarrays
`endif

endmodule
