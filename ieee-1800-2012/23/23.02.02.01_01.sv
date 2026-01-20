// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: VARYING

module top(aport);

  input aport; // First declaration - okay
`ifdef NEGATIVE_TEST
  input aport; // Error - multiple declaration, port declaration
  output aport; // Error - multiple declaration, port declaration
`endif

endmodule
