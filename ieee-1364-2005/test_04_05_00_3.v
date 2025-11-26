// IEEE Std 1364-2005
//   4. Data types
//     4.5 Implicit declarations
//       If an identifier appears on the left-hand side of a continuous assignment statement, and that identifier
//       has not been declared previously in the scope where the continuous assignment statement appears or
//       in any scope whose declarations can be directly referenced from the scope where the continuous
//       assignment statement appears (see 12.7), then an implicit scalar net of default net type shall be
//       assumed.

// ! TYPE: POSITIVE

module test(clk, a, b, c);

  input wire clk;
  input wire [3:0] a;
  input wire [3:0] b;
  output reg [3:0] c;
  
  assign f = ^a; // f is implicitly declared using the default net type (1-bit wire)
  
  always @(posedge clk) begin
    if (f) 
      c = a % b;
    else
      c = 0;
  end
endmodule

