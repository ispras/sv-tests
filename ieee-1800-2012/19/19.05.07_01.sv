// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.7 Value resolution

// ! TYPE: POSITIVE

module top(input clk);

  bit [2:0] p1; // type expresses values in the range 0 to 7
  bit signed [2:0] p2; // type expresses values in the range -4 to 3
  covergroup g1 @(posedge clk);
    coverpoint p1 {
      bins b1 = {1, [2:5], [6:10]};
      bins b2 = {-1, [1:10], 15};
    }
    coverpoint p2 {
      bins b3 = {1, [2:5], [6:10]};
      bins b4 = {-1, [1:10], 15};
    }
  endgroup

endmodule
