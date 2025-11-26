// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.1 Assignment operators

// ! TYPE: POSITIVE

module top;

  parameter i = 1;
  reg [3:0] a;

  initial begin
    a[i] += 2; // same as a[i] = a[i] + 2;
  end

endmodule
