// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: POSITIVE

module top;

  integer n, p, q, r, s;

  `define max(a, b)((a) > (b) ? (a) : (b))
  initial n = `max(p + q, r + s) ;

endmodule
