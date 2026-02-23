// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top(.a({b, c}), f, .g(h[1]));

  // Names 'b', 'c', 'f', 'h' are defined inside the module.
  // Names 'a', 'f', 'g' are defined for port connections.
  // Can use named port connections.

  input b, c, f;
  output [1:0] h;

endmodule
