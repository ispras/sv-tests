// IEEE Std 1800-2012
//   19. Functional coverage
//    19.11 Coverage computation
//     19.11.1 Coverpoint coverage computation

// ! TYPE: POSITIVE

module top;

  bit [2:0] a, b;
  covergroup ct;
    coverpoint b {
      option.auto_bin_max = 4;
      ignore_bins ig = {[0:1], [5:6]};
    }
  endgroup

endmodule
