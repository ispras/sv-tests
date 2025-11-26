// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top(clk, b, c, a);
  input clk;
  input logic [7:0] b, c;
  output logic [7:0] a;

  always_ff @(posedge clk) begin
    a = b + (* mode = "cla" *) c; // sets the value for the attribute mode
                                  // to be the string "cla".
  end
endmodule