// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.1 Integer literal constants

// ! TYPE: POSITIVE

module top;
  logic [15:0] a, b, c, d;
  initial begin
    a = '0; // sets all 16 bits to 0
    b = '1; // sets all 16 bits to 1
    c = 'x; // sets all 16 bits to x
    d = 'z; // sets all 16 bits to z
  end
endmodule