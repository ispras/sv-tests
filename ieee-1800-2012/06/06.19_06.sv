// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations

// ! TYPE: VARYING

module top;
  // Correct declaration - 'bronze' and 'gold' are unsized
  enum bit [3:0] {bronze2 = 'h3, silver2, gold2 = 'h5} medal2;

  // Correct declaration - 'bronze' and 'gold' sizes are redundant
  enum bit [3:0] {bronze3 = 4'h3, silver3, gold3 = 4'h5} medal3;

`ifdef NEGATIVE_TEST
  // Error in the 'bronze' and 'gold' member declarations
  enum bit [3:0] {bronze4 = 5'h13, silver4, gold4 = 3'h5} medal4;

  // Error in 'c' declaration, requires at least 2 bits
  enum bit [0:0] {a, b, c} alphabet;
`endif
endmodule
