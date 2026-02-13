// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations

// ! TYPE: VARYING

module top;
  // Correct: IDLE = 0, XX = 'x, S1 = 1, S2 = 2
  enum integer {IDLE, XX = 'x, S1 = 'b01, S2 = 'b10} state, next;

`ifdef NEGATIVE_TEST
  // Syntax error: IDLE = 0, XX = 'x, S1 = ??, S2 = ??
  enum integer {IDLE, XX = 'x, S1, S2} state, next;
`endif
endmodule
