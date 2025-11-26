// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.5 Multidimensional arrays

// ! TYPE: POSITIVE

module top;

  bit [1:10] v1 [1:5]; // 1 to 10 varies most rapidly; compatible with memory arrays

  bit v2 [1:5] [1:10]; // 1 to 10 varies most rapidly, compatible with C

  bit [1:5] [1:10] v3 ; // 1 to 10 varies most rapidly

  bit [1:5] [1:6] v4 [1:7] [1:8]; // 1 to 6 varies most rapidly, followed by
                                  // 1 to 5, then 1 to 8 and then 1 to 7

endmodule
