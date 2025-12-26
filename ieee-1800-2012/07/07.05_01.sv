// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.5 Dynamic arrays

// ! TYPE: POSITIVE

module top;

  bit [3:0] nibble[]; // Dynamic array of 4-bit vectors
  integer mem[2][]; // Fixed-size unpacked array composed
                    // of 2 dynamic subarrays of integers

endmodule
