// IEEE Std 1800-2012
//   19. Functional coverage
//    19.6 Defining cross coverage
//     19.6.1 Defining cross coverage bins
//      19.6.1.4 Cross bin set expression

// ! TYPE: POSITIVE

module top;

  logic [31:0] a, b;
  covergroup cg(int cg_lim);
    coverpoint a;
    coverpoint b;
    aXb : cross a, b
    {
      function CrossQueueType myFunc1(int f_lim);
        for (int i = 0; i < f_lim; ++i)
        myFunc1.push_back('{i, i});
      endfunction

      bins one = myFunc1(cg_lim);
      bins two = myFunc2(cg_lim);

      function CrossQueueType myFunc2(logic [31:0] f_lim);
        for (logic [31:0] i = 0; i < f_lim; ++i)
        myFunc2.push_back('{2 * i, 2 * i});
      endfunction
    }
  endgroup

  cg cg_inst = new(3);

endmodule
