// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Immediate assertions

// ! TYPE: POSITIVE

module top(input f, in_a, in_b);

  always_comb begin
    assert_f: assert (f) info("passed"); else $error("failed");

    assume_inputs: assume (in_a || in_b) $info("assumption holds");
      else $error("assumption does not hold");

    cover_a_and_b: cover (in_a && in_b) $info("in_a && in_b == 1 covered");
  end

endmodule
