// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.6 Hierarchical names

// ! TYPE: POSITIVE

module cct(stim1, stim2);
  input stim1, stim2;
  // instantiate 'mod'
  mod amod(stim1),
  bmod(stim2);
endmodule

module mod(in);
  input in;
  always_comb begin : keep
    logic hold;
    hold = in;
  end
endmodule

module top;
  logic stim1, stim2;
  cct a(stim1, stim2); // instantiate 'cct'

  initial begin :wave1
    #100 fork : innerwave
           reg hold;
         join
    #150 begin
           stim1 = 0;
         end
  end
endmodule
