// IEEE Std 1364-2005
//   5. Expressions
//    5.2 Operands
//      5.2.3 Strings
//          The following example declares a string variable large enough to hold 14 characters
//          and assigns a value to it.
//          The example then manipulates the string using the concatenation operator.

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
