// IEEE Std 1800-2012
//   4. Scheduling semantics
//    4.8 Race conditions

// ! TYPE: POSITIVE

module top;
  reg p, q;
  assign p = q;
  initial begin
    q = 1;
    #1 q = 0;
    $display(p);
  end
endmodule