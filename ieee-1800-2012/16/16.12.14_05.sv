// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.14 Abort properties

// ! TYPE: POSITIVE

module top;

  logic a, b, p1, p2;

  property p;
    (accept_on(a) p1) or (reject_on(b) p2);
  endproperty

endmodule
