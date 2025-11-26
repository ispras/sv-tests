// IEEE Std 1364-2005
//   4. Data types
//    4.3 Vectors
//      4.3.2 Vector net accessibility

// ! TYPE: POSITIVE

module test;
  tri1 scalared [63:0] bus64; // a bus that will be expanded
  tri vectored [31:0] data;   // a bus that may or may not be expanded
endmodule
