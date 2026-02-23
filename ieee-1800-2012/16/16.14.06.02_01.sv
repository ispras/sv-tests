// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.2 Procedural assertion flush points

// ! TYPE: POSITIVE

module top(clk, a);

  input clk;
  input a;
  logic not_a;

  assign not_a = !a;

  default clocking @(posedge clk); endclocking

  always_comb begin : b1
    // Probably better to not use consts in this example
    // ...but using them to illustrate effects of flushing method
    a1: assert property (const'(not_a) != const'(a));
  end

endmodule
