// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.2 Equivalent types

// ! TYPE: POSITIVE

module top;
  bit [9:0] A [0:5];
  bit [1:10] B [6];
  typedef bit [10:1] uint10;
  uint10 C [6:1]; // 'A', 'B' and 'C' have equivalent types
  typedef int anint [0:0]; // 'anint' is not type equivalent to 'int'
endmodule
