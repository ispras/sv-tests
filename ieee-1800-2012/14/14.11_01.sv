// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.11 Cycle delay: ##

// ! TYPE: POSITIVE

module top(input clk);

  default clocking clock @(posedge clk);
  endclocking

  logic j;

  initial begin
    ##5; // wait '5' cycles (clocking events) using the default clocking
    ##(j + 1); // wait 'j + 1' cycles (clocking events) using the default clocking
  end

endmodule
