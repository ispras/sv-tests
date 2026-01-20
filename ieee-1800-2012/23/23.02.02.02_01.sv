// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.2 Module definitions
//     23.2.2 Port declarations
//      23.2.2.2 ANSI style list of port declarations

// ! TYPE: POSITIVE

module top(input [7:0] a,
           input signed [7:0] b, c, d, // Multiple ports that share all
                                       // attributes can be declared together.
           output [7:0] e, // Every attribute of the declaration
                           // must be in the one declaration.
           output var signed [7:0] f, g,
           output signed [7:0] h);

  // It is illegal to redeclare any ports of
  // the module in the body of the module.
endmodule
