// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.1 Matching types

// ! TYPE: POSITIVE

module top;
  struct packed {int A; int B;} AB1, AB2; // 'AB1', 'AB2' have matching types
  struct packed {int A; int B;} AB3; // the type of 'AB3' does not match
                                     // the type of 'AB1'
endmodule
