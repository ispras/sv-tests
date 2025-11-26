// IEEE Std 1800-2012
//   16. Assertions
//    16.9 Sequence operations
//     16.9.3 Sampled value functions

// ! TYPE: VARYING

module top(clk, clk1, clk2, enable);

input clk, clk1, clk2, enable;
reg a, q, d, x, y;
reg reg2, reg3;
integer i;
reg done, out;
reg [3:0] b, cond, reg1;

a1_bad: assert property (@clk a == b)
    else $display("Different values: a = %b, b = %b", a, b);

a2_ok: assert property (@clk a == b)
    else $display("Different values: a = %b, b = %b",
        $sampled(a), $sampled(b));

always @(posedge clk)
  reg1 <= a & $rose(b);

always @(posedge clk)
  reg2 <= a & $past(b);

always @(posedge clk)
  for (i = 0; i < 4; i = i + 1)
    if (cond[i])
      reg1[i] <= $past(b[i]);

always @(posedge clk)
  if (enable) q <= d;

always @(posedge clk)
  assert property (done |=> (out == $past(q, 2, enable)) );

reg fclk, req, gnt, en;

a1: assert property
    (@(posedge clk) en && $rose(req) |=> gnt);

// Event passing in function calls is not supported.
a2: assert property
    (@(posedge clk) en && $rose(req, @(posedge fclk)) |=> gnt);

always @(posedge clk1)
  reg3 <= $rose(b, @(posedge clk2));


`ifdef NEGATIVE_TEST
  always @(posedge clk) begin
    @(negedge clk2);
    x = $past(y, 5); // illegal if not within default clocking
  end
`endif

endmodule
