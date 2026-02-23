// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.14 Abort properties

// ! TYPE: POSITIVE

module top;

  logic a, b, p1;

  property p4;
    accept_on(a) (reject_on(b) p1);
  endproperty

endmodule
