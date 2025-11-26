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

  reg [7:0] a;
  reg signed [7:0] b;
  reg signed [5:0] c, d;

  initial begin
    a = 8'hff;
    c = a; // After the assignment, c = 6'h3f
    b = -113;
    d = b; // After the assignment, d = 6'h0f
  end
endmodule
