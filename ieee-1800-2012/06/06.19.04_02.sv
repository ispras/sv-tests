// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations
//     6.19.4 Enumerated types in numerical expressions

// ! TYPE: VARYING

module top;
  typedef enum {Red, Green, Blue} Colors;
  typedef enum {Mo, Tu, We, Th, Fr, Sa, Su} Week;
  Colors C;
  Week W;
  int I;

  initial begin
    C = Colors'(C + 1); // 'C' is converted to an integer, then added to
                        // one, then converted back to a 'Colors' type

`ifdef NEGATIVE_TEST
    C = C + 1; C++; C += 2; C = I; // Illegal because they would all be
                                   // assignments of expressions without a cast
`endif

    C = Colors'(Su); // Legal; puts an out of range value into 'C'

    I = C + W; // Legal; 'C' and 'W' are automatically cast to 'int'
  end
endmodule
