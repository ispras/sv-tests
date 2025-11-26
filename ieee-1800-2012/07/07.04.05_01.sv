// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.5 Multidimensional arrays

// ! TYPE: POSITIVE

module top;

  bit [3:0] [7:0] joe [1:10]; // 10 elements of 4 8-bit bytes
                              // (each element packed into 32 bits)

  initial begin
    joe[9] = joe[8] + 1; // 4 byte add
    joe[7][3:2] = joe[6][1:0]; // 2 byte copy
  end

endmodule
