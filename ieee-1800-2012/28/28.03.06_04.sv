// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.3 Gate and switch declaration syntax
//     28.3.6 Primitive instance connection list

// ! TYPE: POSITIVE

module DFF(output reg q, input d, input clk);
  always @(posedge clk) begin
    q <= d;
  end
endmodule

module dffn(q, d, clk);
  parameter bits = 1;
  input [bits - 1:0] d;
  output [bits - 1:0] q;
  input clk;

  DFF dff[bits - 1:0](q, d, clk); // create a row of D flip-flops
endmodule

module MxN_pipeline(in, out, clk);
  parameter M = 3, N = 4; // 'M = width', 'N = depth'
  input [M - 1:0] in;
  output [M - 1:0] out;
  input clk;
  wire [M * (N - 1):1] t;

  // '#(M)' redefines the bits parameter for 'dffn'
  // create 'p[1:N]' columns of 'dffn' rows (pipeline)
  dffn #(M) p[1:N]({out, t}, {t, in}, clk);
endmodule

module top(input [2:0] in, input clk, output [2:0] out);
  MxN_pipeline p(in, out, clk);
endmodule
