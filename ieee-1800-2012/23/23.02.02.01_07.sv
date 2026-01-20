// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top(a, a);

  input a; // This is legal. The inputs are tied together.

endmodule
