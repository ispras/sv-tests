// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.4 Disabling deferred assertions

// ! TYPE: POSITIVE

module top (input bad_val, bad_val_ok);

always @(bad_val or bad_val_ok) begin : b1
  a1: assert #0 (bad_val) else $fatal(1, "Sorry");
  if (bad_val_ok) begin
    disable a1;
  end
end

endmodule
