// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.11 Elaboration system tasks

// ! TYPE: POSITIVE

module top #(N = 1) (input [N - 1:0] in, output [N - 1:0] out);
  if ((N < 1) || (N > 8)) // conditional generate construct
    $error("Parameter N has an invalid value of %0d", N);
  assign out = in;
endmodule
