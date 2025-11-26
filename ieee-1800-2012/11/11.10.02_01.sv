// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.10 String literal expressions
//     11.10.2 String literal value padding and potential problems

// ! TYPE: POSITIVE

module top;

  bit [8*10:1] s1, s2;

  initial begin
    s1 = "Hello";
    s2 = " world!";

    if ({s1, s2} == "Hello world!")
      $display("strings are equal");
  end

endmodule
