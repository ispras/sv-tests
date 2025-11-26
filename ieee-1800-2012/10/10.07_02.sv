// IEEE Std 1800-2012
//   10. Assignment statements
//    10.7 Assignment extension and truncation

// ! TYPE: POSITIVE

module top;

  logic [0:5] a;
  logic signed [0:4] b, c;

  initial begin
    a = 8'sh8f; // After the assignment, a = 6'h0f
    b = 8'sh8f; // After the assignment, b = 5'h0f
    c = -113; // After the assignment, c = 15
              // 1000_1111 = (-'h71 = -113) truncates to ('h0F = 15)
  end

endmodule
