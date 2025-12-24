// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.1 Defining cross coverage bins
//      19.6.1.4 Cross bin set expression

// ! TYPE: POSITIVE

module top;

  int a;
  logic [7:0] b;
  covergroup cg;
    coverpoint a {bins x[] = {[0:10]};}
    coverpoint b {bins y[] = {[0:20]};}
    aXb : cross a, b
    {
      bins one = '{'{1, 2}, '{3, 4}, '{5, 6}};
    }
  endgroup

endmodule
