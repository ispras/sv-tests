// IEEE Std 1364-2005
//   7. Gate- and switch-level modeling
//     7.1 Gate and switch declaration syntax
//       7.1.6 Primitive instance connection list
//         This example demonstrates how a series of modules can be chained together.

// ! TYPE: POSITIVE

module DFF(q, dat, clk);

  input clk;
  input dat;
  output q;
  reg out;

  always @(posedge clk)
    out = dat;

  assign q = out;

  specify
    $setup (dat, posedge clk, 10);
  endspecify

endmodule

module dffn(q, d, clk);

  parameter bits = 1;
  input [bits-1:0] d;
  output [bits-1:0] q;
  input clk ;
  DFF dff[bits-1:0] (q, d, clk); // create a row of D flip-flops
endmodule

module MxN_pipeline(in, out, clk);

  parameter  M = 3, N = 4;        // M=width,N=depth
  input [M-1:0] in;
  output [M-1:0] out;
  input clk;
  wire [M*(N-1):1] t;
  // #(M) redefines the bits parameter for dffn
  // create p[1:N] columns of dffn rows (pipeline)
  dffn #(M) p[1:N]({out, t}, {t, in}, clk);
endmodule
