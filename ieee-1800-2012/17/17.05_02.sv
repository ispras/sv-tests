// IEEE Std 1800-2012
//   17. Checkers
//    17.5 Checker procedures

// ! TYPE: POSITIVE

module top;

  checker clocking_example (logic sig1, sig2, default_clk, rst,
                            event e1, e2, e3);
    bit local_sig;
    default clocking @(posedge default_clk); endclocking

    always_ff @(e1) begin: p1_block
      p1a: assert property (sig1 == sig2);
    end

    always_ff @(e2 or e3 or rst) begin: p2_block
      local_sig <= rst;
      p2a: assert property (sig1 == sig2);
    end

    p1b: assert property (@(e1) (sig1 == sig2));
    p2b: assert property (@(e2) (sig1 == sig2));
    p3b: assert property (@(e3) (sig1 == sig2));

  endchecker

  clocking_example c1 (s1, s2, default_clk, rst,
                       posedge clk1 or posedge clk2,
                       posedge clk1,
                       negedge rst);

endmodule
