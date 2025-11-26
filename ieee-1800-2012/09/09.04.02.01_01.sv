// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control
//      9.4.2.1 Event OR operator

// ! TYPE: POSITIVE

module top(input trig, enable, clk_a, clk_b);

  reg rega, regb;

  always @(trig or enable) begin
    rega = regb;
  end

  always @(posedge clk_a or posedge clk_b or trig) begin
    rega = regb;
  end

endmodule
