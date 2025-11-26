// IEEE Std 1364-2005
//   5. Expressions
//     5.6 Assignments and truncation
//       If the width of the right-hand expression is larger than the width of the left-hand side in
//       an assignment, the MSBs of the right-hand expression will always be discarded to match the
//       size of the left-hand side. Implementations are not required to warn or report any errors
//       related to assignment size mismatch or truncation. Truncating the sign bit of a signed
//       expression may change the sign of the result.

// ! TYPE: POSITIVE

module test;

  reg[5:0] a;
  reg signed [4:0] b;

  initial begin
    a = 8'hff; // After the assignment, a = 6'h3f
    b = 8'hff; // After the assignment, b = 5'h1f
  end
endmodule
