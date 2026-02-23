// IEEE Std 1800-2012
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.2 Structure assignment patterns

// ! TYPE: POSITIVE

module top;

  typedef struct {
    logic [7:0] a;
    bit b;
    bit signed [31:0] c;
    string s;
  } sa;

  sa s2;

  initial
    s2 = '{int:1, default:0, string:""}; // set all to 0 except
                                         // the array of bits to 1
                                         // and string to ""

  initial #10 s2 = '{default:'1, s:""}; // set all to 1 except 's' to ""

endmodule
