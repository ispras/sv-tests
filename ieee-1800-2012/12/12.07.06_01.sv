// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.7 Loop statements
//     12.7.6 The forever-loop

// ! TYPE: POSITIVE

module top;

  logic clock1, clock2;

  initial begin
    clock1 <= 0;
    clock2 <= 0;
    fork
      forever #10 clock1 = ~clock1;
      #5 forever #10 clock2 = ~clock2;
    join
  end

endmodule
