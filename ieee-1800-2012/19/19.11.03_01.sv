// IEEE Std 1800-2012
//   19. Functional coverage
//    19.11 Coverage computation
//     19.11.3 Type coverage computation

// ! TYPE: POSITIVE

module top;

  int a;
  covergroup gt (int l, h);
    coverpoint a {bins b[] = {[l:h]};}
  endgroup

  gt gv1 = new(0, 1);
  gt gv2 = new(1, 2);

endmodule
