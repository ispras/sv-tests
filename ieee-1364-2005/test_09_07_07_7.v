// IEEE Std 1364-2005
//   9. Behavioral modeling
//     9.7 Procedural timing controls
//       9.7.7 Intra-assignment timing controls
//          In the following example, the right-hand expressions are evaluated when the assignment
//          statements are encountered, but the assignments are delayed until the rising edge of the
//          clock signal.

// ! TYPE: POSITIVE

module test(clk);

  input clk;
  reg a, b, c;

  initial begin
    fork // data shift
      a = @(posedge clk) b;
      b = @(posedge clk) c;
    join
  end
endmodule
