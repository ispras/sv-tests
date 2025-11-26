// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.2 Local variable formal arguments in sequence declarations

// ! TYPE: POSITIVE

module top;

reg b_d, d_d;

sequence legal_loc_var_formal (
  local inout logic a,
  local logic b = b_d, // input inferred, default actual argument 'b_d'
  c, // local input logic inferred, no default
     // actual argument
  d = d_d, // local input logic inferred, default actual
           // argument 'd_d'
  logic e, f // 'e' and 'f' are not local variable formal arguments
);

  logic g = c, h = g || d;

  a ##1 g ##1 h;
endsequence

endmodule
