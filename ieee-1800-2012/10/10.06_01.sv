// IEEE Std 1800-2012
//   10. Assignment statements
//    10.6 Procedural continuous assignments

// ! TYPE: POSITIVE

module top;

  int a, b, c;

  function int f(input c);
    return c;
  endfunction

  initial begin
    force a = b + f(c);
  end
endmodule
