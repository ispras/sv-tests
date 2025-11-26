// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top(clk, b, c, a);
  input clk;
  input logic [7:0] b, c;
  output logic [7:0] a;

  function logic [7:0] add(input logic [7:0] x, y);
    return x + y;
  endfunction

  always_ff @(posedge clk) begin
    a = add (* mode = "cla" *) (b, c);
  end
endmodule