// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.3 Specifying illegal cross products

// ! TYPE: POSITIVE

module top;

  bit [31:0] x, y;
  covergroup zz(int bad);
    cross x, y
    {
      illegal_bins illegal = binsof(y) intersect {bad};
    }
  endgroup

endmodule
