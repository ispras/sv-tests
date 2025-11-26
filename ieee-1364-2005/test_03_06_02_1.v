// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.6 Strings
//      3.6.2 String manipulation

// ! TYPE: POSITIVE

module string_test;

  reg [8*14:1] stringvar;

  initial begin
    stringvar = "Hello world";
    $display("%s is stored as %h", stringvar, stringvar);
    stringvar = {stringvar,"!!!"};
    $display("%s is stored as %h", stringvar, stringvar);
  end
endmodule
