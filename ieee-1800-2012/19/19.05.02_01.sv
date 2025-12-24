// IEEE Std 1800-2012
//   19. Functional coverage
//    19.5 Defining coverage points
//     19.5.2 Specifying bins for transitions

// ! TYPE: POSITIVE

module top(input clk);

  bit [4:1] v_a;
  covergroup cg @(posedge clk);
    coverpoint v_a
    {
      bins sa = (4 => 5 => 6), ([7:9], 10 => 11, 12);
      bins sb[] = (4 => 5 => 6), ([7:9], 10 => 11, 12);
      bins sc = (12 => 3 [-> 1]);
      bins allother = default sequence;
    }
  endgroup

endmodule
