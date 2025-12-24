// IEEE Std 1800-2012
//   19. Functional coverage
//    19.3 Defining the coverage model: covergroup

// ! TYPE: POSITIVE

module top(input clk);

  enum { red, green, blue } color;

  covergroup g1 @(posedge clk);
    c: coverpoint color;
  endgroup

endmodule
