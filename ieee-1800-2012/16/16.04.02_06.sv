// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

// ! TYPE: POSITIVE

module top(clk, a, b);

  input clk, a, b;
  reg c;

  always @(posedge clk)
    c <= b;
    a1: assert #0 (!(a & c)) $display("Pass"); else $display("Fail");
    a2: assert final (!(a & c)) $display("Pass"); else $display("Fail");

endmodule
