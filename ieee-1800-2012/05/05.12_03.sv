// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

(* optimize_power *)
module mod1 (
  input logic clk,
  input logic [3:0] in,
  output logic [3:0] out
);
  always_ff @(posedge clk) begin
    out <= in + 1;
  end
endmodule

(* optimize_power = 1 *)
module mod2 (
  input logic clk,
  input logic [3:0] in,
  output logic [3:0] out
);
  always_ff @(posedge clk) begin
    out <= in - 1;
  end
endmodule

module top(clk, in, out1, out2);
  input logic clk;
  input logic [3:0] in;
  output logic [3:0] out1, out2;

  mod1 inst1 (.clk(clk), .in(in), .out(out1));
  mod2 inst2 (.clk(clk), .in(in), .out(out2));
endmodule
