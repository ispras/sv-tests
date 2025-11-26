// IEEE Std 1364-2005
//   19. Compiler directives
//     19.7 `line
//       Examples of `include compiler directives are as follows.

// ! TYPE: POSITIVE

`line  3 "orig.v" 2
// This line is line 3 of orig.v after exiting include file

module test;
  initial begin
  end
endmodule
