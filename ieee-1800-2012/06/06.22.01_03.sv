// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.1 Matching types

// ! TYPE: POSITIVE

module top;
  typedef struct packed {int A; int B;} AB_t;
  AB_t AB1; AB_t AB2; // 'AB1' and 'AB2' have matching types

  typedef struct packed {int A; int B;} otherAB_t;
  otherAB_t AB3; // the type of 'AB3' does not match the type of 'AB1' or 'AB2'
endmodule
