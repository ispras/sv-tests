// IEEE Std 1800-2012
//   10. Assignment statements
//    10.7 Assignment extension and truncation

// ! TYPE: POSITIVE

module top;

  logic [5:0] a;
  logic signed [4:0] b;

  initial begin
    a = 8'hff; // After the assignment, a = 6'h3f
    b = 8'hff; // After the assignment, b = 5'h1f
  end

endmodule
