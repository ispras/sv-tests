// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.12 Default clocking

// ! TYPE: POSITIVE

module top(input clk1, clk2);

  clocking busA @(posedge clk1);
  endclocking

  clocking busB @(negedge clk2);
  endclocking

  module cpu(interface y);
    default clocking busA ;
    initial begin
      ## 5; // use 'busA' => '(posedge clk1)'
    end
  endmodule

endmodule
