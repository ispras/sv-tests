// IEEE Std 1800-2012
//   19. Functional coverage
//    19.11 Coverage computation
//     19.11.3 Type coverage computation

// ! TYPE: POSITIVE

module top;

  bit [7:0] a;
  covergroup ga (int abm);
    option.auto_bin_max = abm;
    coverpoint a {ignore_bins i = {3};}
  endgroup

  ga gv1 = new(64);
  ga gv2 = new(32);

endmodule
