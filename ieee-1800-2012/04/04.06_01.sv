// IEEE Std 1800-2012
//   4. Scheduling semantics
//    4.6 Determinism

// ! TYPE: POSITIVE

module top;
  logic a;
  initial begin
    a <= 0;
    a <= 1;
  end
endmodule