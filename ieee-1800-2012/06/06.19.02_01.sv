// IEEE Std 1800-2012
//   6. Data types
//    6.19 Enumerations
//     6.19.2 Enumerated type ranges

// ! TYPE: POSITIVE

module top;
  typedef enum {add = 10, sub[5], jmp[6:8]} E1;
  enum {register[2] = 1, register[2:4] = 10} vr;
endmodule
