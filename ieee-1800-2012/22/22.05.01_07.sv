// IEEE Std 1800-2012
//   22. Compiler directives
//    22.5 `define, `undef, and `undefineall
//     22.5.1 `define

// ! TYPE: POSITIVE

module top;

  `define HI Hello
  `define LO "`HI, world"
  `define H(x) "Hello, x"

  initial begin
    $display("`HI, world");
    $display(`LO);
    $display(`H(world));
  end

endmodule
