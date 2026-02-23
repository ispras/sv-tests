// IEEE Std 1800-2012
//   6. Data types
//    6.24 Casting
//     6.24.3 Bit-stream casting

// ! TYPE: NEGATIVE

module top;
  // Illegal conversion from 24-bit struct to 32 bit 'int' - compile time error
  struct {bit[7:0] a1; shortint b1;} a1;
  int b1 = int'(a1);

  // Illegal conversion from 20-bit struct to 'int' (32 bits) - run time error
  struct {bit a2[$]; shortint b2;} a2 = {{1, 2, 3, 4}, 67};
  int b2 = int'(a2);

  // Illegal conversion from 'int' (32 bits) to struct 'dest_t' (25 or 33 bits),
  // compile time error
  typedef struct {byte a3[$]; bit b3;} dest_t;
  int a3;
  dest_t b3 = dest_t'(a3);
endmodule
