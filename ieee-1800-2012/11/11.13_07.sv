// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

module top(input clock);

  logic [15:0] a, b;
  logic c, d;
  typedef bit [15:0] bits;

  let ones_match(bits x, y) = x == y;
  let same(logic x, y) = x === y;

  always_comb
    a1: assert(ones_match(a, b));

  property toggles(bit x, y);
    same(x, y) |=> !same(x, y);
  endproperty

  a2: assert property (@(posedge clock) toggles(c, d));

endmodule
