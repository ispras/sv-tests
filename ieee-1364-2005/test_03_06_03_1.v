// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.6 Strings
//      3.6.3 Special characters in strings

// ! TYPE: POSITIVE

module test;
  reg [8*32:0] p00 = "\n";
  reg [8*32:0] p01 = "\t";
  reg [8*32:0] p02 = "\\";
  reg [8*32:0] p03 = "\"";
  reg [8*32:0] p04 = "\123";
endmodule
