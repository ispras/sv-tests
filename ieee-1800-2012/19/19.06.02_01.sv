// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.2 Excluding cross products

// ! TYPE: POSITIVE

module top;

  bit [4:0] a, b;
  covergroup yy;
    cross a, b
    {
      ignore_bins ignore = binsof(a) intersect {5, [1:3]};
    }
  endgroup

endmodule
