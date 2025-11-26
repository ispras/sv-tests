// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top(clk, b, c, d, a);
  input clk;
  input logic [7:0] c, d;
  input logic b;
  output logic [7:0] a;

  always_ff @(posedge clk) begin
    a = b ? (* no_glitch *) c : d;
  end
endmodule