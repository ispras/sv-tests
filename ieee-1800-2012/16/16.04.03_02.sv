// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.3 Deferred assertions outside procedural code

// ! TYPE: POSITIVE

module top(input a, b);

  always_comb begin
    a1: assert #0 (a == b);
  end

endmodule
