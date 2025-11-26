// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.5 Programmable logic array (PLA) modeling system tasks
//       17.5.2 Array logic types

// ! TYPE: POSITIVE

module test;

  wire a1, a2, a3, a4, a5, a6, a7;
  reg  b1, b2, b3;
  reg [0:5] mem[1:256];

  initial begin
    // An example of a nor plane system call is as follows:
    $async$nor$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});

    // An example of a nand plane system call is as follows:
    $sync$nand$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
  end

endmodule