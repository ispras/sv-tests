// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top({c, d}, .e(f));

  // Nets '{c, d}' receive the first port bits.
  // Name 'f' is declared inside the module.
  // Name 'e' is defined outside the module.
  // Cannot use named port connections of first port.

  input c, d;
  output f;

endmodule
