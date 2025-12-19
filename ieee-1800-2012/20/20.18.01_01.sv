// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.18 Miscellaneous tasks and functions
//     20.18.1 $system

// ! TYPE: POSITIVE

module top;
  initial $system("mv design.v adder.v");
endmodule
