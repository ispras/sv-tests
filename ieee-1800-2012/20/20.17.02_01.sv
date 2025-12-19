// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.17 Programmable logic array modeling system tasks
//     20.17.2 Array logic types

// ! TYPE: POSITIVE

module top;

  logic [1:12] mem[1:10];

  wire a1, a2, a3, a4, a5, a6, a7;
  logic b1, b2, b3;

  initial begin
    // An example of a nor plane system call is as follows:
    $async$nor$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
    // An example of a nand plane system call is as follows:
    $sync$nand$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
  end

endmodule
