// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations
//     6.19.4 Enumerated types in numerical expressions

// ! TYPE: POSITIVE

module top;
  typedef enum {red, green, blue, yellow, white, black} Colors;

  Colors col;
  integer a, b;
  initial begin
    a = blue * 3;
    col = yellow;
    b = col + green;
  end
endmodule
