// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.17 Programmable logic array modeling system tasks
//     20.17.1 Array types

// ! TYPE: POSITIVE

module top;

  logic [1:12] mem[1:10];

  wire a1, a2, a3, a4, a5, a6, a7;
  logic b1, b2, b3;
  wire [1:7] awire;
  logic [1:3] breg;

  initial begin
    // An example of an asynchronous system call is as follows:
    $async$and$array(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
    $async$and$array(mem, awire, breg);
    // An example of a synchronous system call is as follows:
    $sync$or$plane(mem, {a1, a2, a3, a4, a5, a6, a7}, {b1, b2, b3});
  end

endmodule
