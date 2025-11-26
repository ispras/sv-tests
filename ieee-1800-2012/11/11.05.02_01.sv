// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.5 Operands
//     11.5.2 Array and memory addressing

// ! TYPE: VARYING

module top;

  logic [2:0] sel = 3'b101;

  logic [7:0] twod_array[0:255][0:255];
  wire threed_array[0:255][0:255][0:7];

  logic [3:0] b1 = twod_array[14][1][3:0]; // access lower 4 bits of word
  logic b2 = twod_array[1][3][6]; // access bit 6 of word
  logic b3 = twod_array[1][3][sel]; // use variable bit-select
`ifdef NEGATIVE_TEST
  logic [3:0] b4 = threed_array[14][1][3:0]; // Illegal
`endif

endmodule
