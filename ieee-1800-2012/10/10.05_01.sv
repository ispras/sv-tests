// IEEE Std 1800-2012
//   10. Assignment statements
//    10.5 Variable declaration assignment (variable initialization)

// ! TYPE: POSITIVE

module top;
  logic consta, constb, vara, varb;

  wire w = vara & varb; // net with a continuous assignment
  logic v = consta & constb; // variable with initialization
endmodule
