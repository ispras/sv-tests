// IEEE Std 1800-2012
//   12. Procedural programming statements
//    12.4 Conditional if–else statement
//     12.4.2 unique-if, unique0-if, and priority-if
//      12.4.2.2 If statement violation reports and multiple processes

// ! TYPE: POSITIVE

module top;

  bit c, d, e, f, some_stuff, other_stuff;

  function bit f1(bit a, bit not_a);
    a1: unique if (a) return a;
    else if (not_a) return not_a;
  endfunction

  always_comb begin : b1
    some_stuff = f1(c, d);
  end
  always_comb begin : b2
    other_stuff = f1(e, f);
  end

endmodule
