// IEEE Std 1800-2012
//   17. Checkers
//    17.5 Checker procedures

// ! TYPE: POSITIVE

module top;

  checker check(logic a, b, c, clk, rst);
    logic x, y, z, v, t;
    assign x = a; // current value of 'a'

    always_ff @(posedge clk or negedge rst) // current values of 'clk' and 'rst'
    begin
      a1: assert (b); // sampled value of 'b'
      if (rst) // current value of 'rst'
        z <= b; // sampled value of 'b'
      else z <= !c; // sampled value of 'c'
    end

    always_comb begin
      a2: assert (b); // current value of 'b'
      if (a) // current value of 'a'
        v = b; // current value of 'b'
      else v = !b; // current value of 'b'
    end
    always_latch begin
      a3: assert (b); // current value of 'b'
      if (clk) // current value of 'clk'
        t <= b; // current value of 'b'
    end
  endchecker : check

endmodule
