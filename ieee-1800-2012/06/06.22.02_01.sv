// IEEE Std 1800-2012
//   6. Data types
//    6.22 Type compatibility
//     6.22.2 Equivalent types

// ! TYPE: POSITIVE

module top;
  struct {int A; int B;} AB1, AB2; // 'AB1', 'AB2' have equivalent types
  struct {int A; int B;} AB3; // 'AB3' is not type equivalent to 'AB1'
endmodule
