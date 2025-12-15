// IEEE Std 1800-2012
//   18. Constrained random value generation
//    18.16 Random weighted case—randcase

// ! TYPE: POSITIVE

module top;

  byte a, b;
  integer x;
  initial randcase
    a + b : x = 1;
    a - b : x = 2;
    a ^ ~b : x = 3;
    12'h320 : x = 4;
  endcase

endmodule
