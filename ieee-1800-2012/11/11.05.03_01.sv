// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.5 Operands
//     11.5.3 Longest static prefix

// ! TYPE: POSITIVE

module top;

  localparam p = 7;
  reg [7:0] m [5:1][5:1];
  integer i;

  reg r1 = m[1][i]; // longest static prefix is' m[1]'
  reg r2 = m[p][1]; // longest static prefix is 'm[p][1]'
  reg r3 = m[i][1]; // longest static prefix is 'm'

endmodule
