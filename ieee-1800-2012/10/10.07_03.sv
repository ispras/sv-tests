// IEEE Std 1800-2012
//   10. Assignment statements
//    10.7 Assignment extension and truncation

// ! TYPE: POSITIVE

module top;

  logic [7:0] a;
  logic signed [7:0] b;
  logic signed [5:0] c, d;

  initial begin
    a = 8'hff;
    c = a; // After the assignment, c = 6'h3f
    b = -113;
    d = b; // After the assignment, d = 6'h0f
  end

endmodule
