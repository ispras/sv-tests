// IEEE Std 1800-2012
//   19. Functional coverage
//    19.8 Predefined coverage methods
//     19.8.1 Overriding the built-in sample method

// ! TYPE: NEGATIVE

module top;

  covergroup C1 (int v) with function sample (int v, bit b); // error '(v)'
    coverpoint v;
    option.per_instance = b; // error: 'b' may only designate a coverpoint
    option.weight = v; // error: 'v' is ambiguous
  endgroup

endmodule
