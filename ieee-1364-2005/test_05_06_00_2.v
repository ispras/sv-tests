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

  reg        [0:5] a;
  reg signed [0:4] b, c;

  initial begin
    a = 8'sh8f; // After the assignment, a = 6'h0f
    b = 8'sh8f; // After the assignment, b = 5'h0f
    c = -113;
    // After the assignment, c = 15
    // 1000_1111 = (-'h71 = -113) truncates to ('h0F = 15)
  end
endmodule
