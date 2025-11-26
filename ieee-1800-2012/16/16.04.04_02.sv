// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.4 Disabling deferred assertions

// ! TYPE: POSITIVE

module top (input a, b, c, clear_b2);

always @(a or b or c) begin : b2
  if (c == 8'hff) begin
    a2: assert #0 (a && b);
  end else begin
    a3: assert #0 (a || b);
  end
end

always @(clear_b2) begin : b3
  disable b2;
end

endmodule
