// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.3 Port declarations
//         As an example, the module named test given in the previous example could alternatively be
//         declared as follows.

// ! TYPE: POSITIVE

module test(
  input [7:0] a,
  input signed [7:0] b, c, d, // Multiple ports that share all
                              // attributes can be declared together.

  output [7:0] e,             // Every attribute of the declaration
                              // must be in the one declaration.

  output reg signed [7:0] f, g,
  output signed [7:0] h);
endmodule
