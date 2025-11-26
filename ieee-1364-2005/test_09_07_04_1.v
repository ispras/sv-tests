// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.4 Event or operator
//         The next two examples show the logical or of two and three events, respectively

// ! TYPE: POSITIVE

module test(clk_a, clk_b, trig, enable);

  input clk_a, clk_b, trig, enable;
  reg r, rega, regb;

  initial begin
    @(trig or enable) rega = regb; // controlled by trig or enable
    @(posedge clk_a or posedge clk_b or trig) rega = regb;
  end
endmodule
