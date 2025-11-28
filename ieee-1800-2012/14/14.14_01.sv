// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.14 Global clocking

// ! TYPE: POSITIVE

module top;

  logic clk1, clk2;
  global clocking sys @(clk1 or clk2); endclocking

endmodule
