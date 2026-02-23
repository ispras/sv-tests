// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators
//      11.4.12.2 String concatenation

// ! TYPE: POSITIVE

module top;

  string hello = "hello";
  string s1;
  int n = 3;
  string s2 = {n{"boo "}};

  initial begin
    s1 = {hello, " ", "world"};
    $display( "%s\n", s1);
    s1 = {s1, " and goodbye"};
    $display("%s\n", s1);
    $display("%s\n", s2); // displays 'boo boo boo '
  end
endmodule
