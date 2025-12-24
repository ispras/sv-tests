// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage

// ! TYPE: POSITIVE

module top(input clk);

  bit [3:0] a, b;
  covergroup cov @(posedge clk);
    aXb : cross a, b;
  endgroup

endmodule
