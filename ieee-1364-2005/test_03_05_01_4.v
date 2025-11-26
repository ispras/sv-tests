// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 4 - Automatic left padding

// ! TYPE: POSITIVE

module test;

  reg [11:0] a, b, c, d;

  initial begin
    a = 'h x;   // yields xxx
    b = 'h 3x;  // yields 03x
    c = 'h z3;  // yields zz3
    d = 'h 0z3; // yields 0z3
  end

  reg [84:0] e, f, g;

  initial begin
    e = 'h5;    // yields {82{1'b0},3'b101}
    f = 'hx;    // yields {85{1'hx}}
    g = 'hz;    // yields {85{1'hz}}
  end
endmodule
