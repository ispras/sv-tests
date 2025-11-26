// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.5 Hierarchical names
//       The code in this example defines a hierarchy of module instances and named blocks.

// ! TYPE: POSITIVE

module mod(in);

  input in;

  always @(posedge in) begin : keep
  reg hold;
    hold = in;
  end
endmodule

module cct(stim1, stim2);
  input stim1, stim2;

  // instantiate mod
  mod amod(stim1), bmod(stim2);
endmodule

module wave;
  reg stim1, stim2;
  cct a(stim1, stim2); // instantiate cct

  initial begin : wave1
    #100 fork : innerwave
      reg hold;
    join
    #150 begin
      stim1 = 0;
    end
  end
endmodule
