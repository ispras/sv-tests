// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

module top;

  logic clk, a, b;
  logic p, q, r;

  // let with formal arguments and default value on 'y'
  let eq(x, y = b) = x == y;

  // without parameters, binds to 'a', 'b' above
  let tmp = a && b;

  a1: assert property (@(posedge clk) eq(p, q));
  always_comb begin
    a2: assert (eq(r)); // use default for 'y'
    a3: assert (tmp);
  end

endmodule
