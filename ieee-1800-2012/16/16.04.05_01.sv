// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.5 Deferred assertions and multiple processes

// ! TYPE: POSITIVE

module top(input x, y, z, w);

  reg some_stuff, some_ok, some_fail;
  reg other_stuff, other_ok, other_fail;

  function bit f(int a, int b);
    a1: assert #0 (a == b);
  endfunction

  always_comb begin : b1
    some_stuff = f(x, y) ? some_ok : some_fail;
  end

  always_comb begin : b2
    other_stuff = f(z, w) ? other_ok : other_fail;
  end

endmodule
