// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.6 Expression bit lengths
//     11.6.3 Example of self-determined expressions

// ! TYPE: POSITIVE

module top;

  logic [3:0] a;
  logic [5:0] b;
  logic [15:0] c;

  initial begin
    a = 4'hF;
    b = 6'hA;
    $display("a*b=%h", a * b); // expression size is self-determined
    c = {a ** b}; // expression 'a ** b' is self-determined
                  // due to concatenation operator '{}'
    $display("a**b=%h", c);
    c = a ** b; // expression size is determined by 'c'
    $display("c=%h", c);
  end

endmodule
