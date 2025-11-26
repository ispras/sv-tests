// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 1

// ! TYPE: POSITIVE

module test;

  reg a;
  reg [7:0] b;
  reg w;
  reg [8:0] result;

  initial begin
    // This example concatenates four expressions:
    result = {a, b[3:0], w, 3'b101};
    // It is equivalent to the following example:
    result = {a, b[3], b[2], b[1], b[0], w, 1'b1, 1'b0, 1'b1};
  end
endmodule
