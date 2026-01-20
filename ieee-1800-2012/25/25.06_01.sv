// IEEE Std 1800-2012
//   25. Interfaces
//    25.6 Interfaces and specify blocks

// ! TYPE: POSITIVE

interface itf;
  logic c, q, d;
  modport flop(input c, d, output q);
endinterface

module dtype(itf.flop ch);
  always_ff @(posedge ch.c) ch.q <= ch.d;

  specify
    (posedge ch.c => (ch.q +: ch.d)) = (5, 6);
    $setup(ch.d, posedge ch.c, 1);
  endspecify
endmodule

module top;

  itf i();

  dtype dtype(.ch(i.flop));

endmodule
