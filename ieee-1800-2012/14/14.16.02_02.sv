// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.16 Synchronous drives
//     14.16.2 Driving clocking output signals

// ! TYPE: POSITIVE

module top(input clk, x);

  bit a = 1'b1;
  default clocking cb @(posedge clk);
    output a;
  endclocking

  initial begin
    ## 1;
    cb.a <= 1'b0;
    @(x); // 'x' is triggered by reactive stimulus running in same time step
    cb.a <= 1'b1;
  end

endmodule
