// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.1 Defining cross coverage bins

// ! TYPE: POSITIVE

module top;

  int i, j;
  covergroup ct;
    coverpoint i {bins i[] = {[0:1]};}
    coverpoint j {bins j[] = {[0:1]};}
    x1: cross i, j;
    x2: cross i, j {
      bins i_zero = binsof(i) intersect {0};
    }
  endgroup

endmodule
