// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage

// ! TYPE: POSITIVE

module top(input clk);

  bit [31:0] a_var;
  bit [3:0] b_var;
  covergroup cov3 @(posedge clk);
    A: coverpoint a_var {bins yy[] = {[0:9]};}
    CC: cross b_var, A;
  endgroup

endmodule
