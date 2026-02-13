// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations
//     6.19.3 Type checking

// ! TYPE: VARYING

module top;
  typedef enum {red, green, blue, yellow, white, black} Colors;

  Colors c;
  initial begin
    c = green;
`ifdef NEGATIVE_TEST
    c = 1; // Invalid assignment
`endif
    if (1 == c); // OK. 'c' is auto-cast to integer
  end
endmodule
