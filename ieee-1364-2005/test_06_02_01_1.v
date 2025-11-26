// IEEE Std 1364-2005
//   6. Expressions
//     6.2 Procedural assignments
//       6.2.1 Variable declaration assignment
//         Declare a 4-bit reg and assign it the value 4.

// ! TYPE: POSITIVE

module test;
  reg [3:0] a = 4'h4;
  reg b;
  initial b = 4'h4; // equivalent to 'a' initialization
endmodule
