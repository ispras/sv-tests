// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.5 Programmable logic array (PLA) modeling system tasks
//       17.5.3 Logic array personality declaration and loading
//         The following example shows a logic array with n input terms and m output terms.

// ! TYPE: POSITIVE

module test;
  parameter n = 10, m = 10;
  reg [1:n] mem[1:m];

endmodule
