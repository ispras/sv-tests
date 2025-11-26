// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top(input a);

assign not_a = !a;
always_comb begin : b1
  a1: assert (not_a != a);
  a2: assert #0 (not_a != a); // Should pass once values have settled
end

endmodule
