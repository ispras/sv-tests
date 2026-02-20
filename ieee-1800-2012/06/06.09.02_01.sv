// IEEE Std 1800-2012
//   6. Data types
//    6.9 Vector declarations
//     6.9.2 Vector net accessibility

// ! TYPE: POSITIVE

module top;
  tri1 scalared [63:0] bus64; // a 'bus' that will be expanded
  tri vectored [31:0] data; // a 'bus' that may or may not be expanded
endmodule
