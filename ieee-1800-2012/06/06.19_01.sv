// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations

// ! TYPE: VARYING

module top;
  enum {red, yellow, green} light1, light2; // anonymous 'int' type

`ifdef NEGATIVE_TEST
  // Syntax error: IDLE = 2'b00, XX = 2'bx <ERROR>, S1 = 2'b01, S2 = 2'b10
  enum bit [1:0] {IDLE, XX = 'x, S1 = 2'b01, S2 = 2'b10} state, next;
`endif
endmodule
