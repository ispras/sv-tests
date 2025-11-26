// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.10 String literal expressions

// ! TYPE: POSITIVE

module top;

  bit [8*14:1] stringvar;

  initial begin
    stringvar = "Hello world";
    $display("%s is stored as %h", stringvar, stringvar);

    stringvar = {stringvar, "!!!"};
    $display("%s is stored as %h", stringvar, stringvar);
  end

endmodule
