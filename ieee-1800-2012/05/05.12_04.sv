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

module top(clk, in, out);
  input clk;
  input logic [3:0] in;
  output logic [3:0] out;

  (* optimize_power=0 *)
  mod1 synth1 (
    .clk(clk),
    .in(in),
    .out(out)
  );
endmodule
