// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

module top;

  logic a, b;
  let x = a || b;

  sequence s;
    x ##1 b;
  endsequence : s

endmodule
