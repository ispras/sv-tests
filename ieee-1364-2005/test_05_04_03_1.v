// IEEE Std 1364-2005
//   5. Expressions
//     5.4 Expression bit lengths
//       5.4.3 Example of self-determined expressions
//         Simulator output for this example:
//           a*b=16 // 'h96 was truncated to 'h16 since expression size is 6
//           a**b=1 // expression size is 4 bits (size of a)
//           c=ac61 // expression size is 16 bits (size of c)

// ! TYPE: POSITIVE

module test;

  reg [3:0] a;
  reg [5:0] b;
  reg [15:0] c;

  initial begin
    a = 4'hF;
    b = 6'hA;
    $display ("a*b=%h", a * b); // expression size is self-determined
    c = {a**b};               // expression a**b is self-determined
                              // due to concatenation operator {}
    $display ("a**b=%h", c);
    c = a**b;                 // expression size is determined by c
    $display ("c=%h", c);
  end
endmodule
