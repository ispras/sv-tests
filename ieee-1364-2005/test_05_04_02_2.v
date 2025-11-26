// IEEE Std 1364-2005
//   5. Expressions
//     5.4 Expression bit lengths
//       5.4.2 Example of expression bit-length problem
//         In the following example the $display statement will display "answer = 01000". By itself,
//         the expression a&b would have the bit length 4, but because it is in the context of the
//         conditional expression, which uses the maximum bit length, the expression a&b actually
//         has length 5, the length of d .

// ! TYPE: POSITIVE

module bitlength();

  reg [3:0] a, b, c;
  reg [4:0] d;

  initial begin
    a = 9;
    b = 8;
    c = 1;
    $display ("answer = %b", c ? (a&b) : d);
  end
endmodule
