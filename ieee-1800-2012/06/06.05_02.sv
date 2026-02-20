// IEEE Std 1800-2012
//   6. Data types
//    6.5 Nets and variables

// ! TYPE: POSITIVE

module top(input vara, varb, PI, R);
  const logic consta = 0, constb = 1;
  wire w = vara & varb; // net with a continuous assignment

  logic v = consta & constb; // variable with initialization

  logic vw; // no initial assignment
  assign vw = vara & varb; // continuous assignment to a variable

  real circ;
  assign circ = 2.0 * PI * R; // continuous assignment to a variable
endmodule
