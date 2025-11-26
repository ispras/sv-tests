// IEEE Std 1364-2005
//   19. Compiler directives
//     19.5 `include
//       Examples of `include compiler directives are as follows.

// ! TYPE: POSITIVE

`include "parts/count.v"
`include "fileB"
`include "fileB" // including fileB

module test;
  initial begin
  end
endmodule
