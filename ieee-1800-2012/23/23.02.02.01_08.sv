// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.1 Non-ANSI style port declarations

// ! TYPE: POSITIVE

module top(.p({a, e}));

  input a; // 'p' contains both input and output directions.
  output e;

endmodule
