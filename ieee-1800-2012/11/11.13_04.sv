// IEEE Std 1800-2012
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

module top;

  logic x = 1'b1;
  logic a, b;
  let y = x;

  always_comb begin
    // 'y' binds to preceding definition of 'x'
    // in the declarative context of 'let'
    bit x = 1'b0;
    b = a | y;
  end

endmodule
