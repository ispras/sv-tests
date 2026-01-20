// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top(.a(i), .b(i));

  // Name 'i' is declared inside the module as an 'inout' port.
  // Names 'a' and 'b' are defined for port connections.

  inout i;

endmodule
