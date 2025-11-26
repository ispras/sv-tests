// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: VARYING

module top;
  integer dec = 659; // is a hexadecimal number
  integer hex = 'h837FF; // is a hexadecimal number
  integer oct = 'o7460; // is an octal number
`ifdef NEGATIVE_TEST
  reg [11:0] illegal_hex = 4af; // is illegal (hexadecimal format requires 'h)
`endif
endmodule