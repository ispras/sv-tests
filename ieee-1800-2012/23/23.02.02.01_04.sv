// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top(a[7:4], a[3:0]);

  // First port is upper 4 bits of 'a'.
  // Second port is lower 4 bits of 'a'.
  // Cannot use named port connections because
  // of part-select port 'a'.

  inout [7:0] a;

endmodule
