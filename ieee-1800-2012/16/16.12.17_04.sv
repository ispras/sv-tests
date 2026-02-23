// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.17 Recursive properties

// ! TYPE: POSITIVE

module top;

  property p3(p, bit b, abort);
    (p and (1'b1 |=> p4(p, b, abort)));
  endproperty

  property p4(p, bit b, abort);
    accept_on(b) reject_on(abort) p3(p, b, abort);
  endproperty

endmodule
