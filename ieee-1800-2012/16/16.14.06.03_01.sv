// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.3 Procedural concurrent assertions and glitches

// ! TYPE: POSITIVE

module top(clk, en, bar, foo);

  input clk;
  input en;
  input [10:0] bar;
  output logic [10:0] foo;

  always_comb begin : procedural_block_1
    if (en)
      foo = bar;
  end

  always_comb begin : procedural_block_2
    p1: assert property ( @(posedge clk) (const'(foo) == const'(bar)) );
  end

endmodule
