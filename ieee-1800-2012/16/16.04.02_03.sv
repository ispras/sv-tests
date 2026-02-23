// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top;

  assign a = 0;
  assign b = 1;
  always_comb begin : b1
    c1: cover (b != a);
    c2: cover #0 (b != a);
  end

endmodule
