// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.4 Loading memory array data from a file

// ! TYPE: POSITIVE

module top;

  logic [7:0] mem[1:256];

  initial $readmemh("mem.data", mem);
  initial $readmemh("mem.data", mem, 16);
  initial $readmemh("mem.data", mem, 128, 1);

endmodule
