// IEEE Std 1800-2012
//   6. Data types
//    6.16 String data type

// ! TYPE: POSITIVE

module top;
  string s0 = "String literal assign"; // sets 's0' to "String literal assign"
  string s1 = "hello\0world"; // sets 's1' to "helloworld"
  bit [11:0] b = 12'ha41;
  string s2 = string'(b); // sets 's2' to 16'h0a41
endmodule
