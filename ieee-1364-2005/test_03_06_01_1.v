// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.6 Strings
//      3.6.1 String variable declaration

// ! TYPE: POSITIVE

module test;

  reg [8*12:1] stringvar;

  initial begin
    stringvar = "Hello world!";
  end
endmodule
