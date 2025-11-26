// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 7

// ! TYPE: POSITIVE

module test;

  reg a, b, c;

  function add;
    input b, c;
    begin
      add = b + c;
    end
  endfunction

  initial begin
    a = add (* mode = "cla" *) (b, c);
  end
endmodule
