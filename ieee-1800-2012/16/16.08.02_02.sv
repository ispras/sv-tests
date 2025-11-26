// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.2 Local variable formal arguments in sequence declarations

// ! TYPE: VARYING

module top;

logic b;

sequence illegal_loc_var_formal (
`ifdef NEGATIVE_TEST
  output logic a, // illegal: local must be specified with
                  // direction

  local inout logic b,

  c = 1'b0, // default actual argument illegal for inout
  local d = expr, // illegal: type must be specified explicitly
  local event e, // illegal: 'event' is a type disallowed in
                 // 16.6

  local logic f = g // 'g' shall not refer to the local variable
                    // below and must be resolved upward from
                    // this declaration
`endif
);
  logic g = b;

  ##1 g;
endsequence

endmodule
