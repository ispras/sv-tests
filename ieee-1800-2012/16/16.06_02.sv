// IEEE Std 1800-2012
//   16. Assertions
//    16.6 Boolean expressions

// ! TYPE: VARYING

module top(clk);

input clk;
reg [2:0] count;
reg a;

initial count = 0;

`ifdef NEGATIVE_TEST
realtime t;
always @(posedge clk) begin
  if (count == 0) t = $realtime; //capture 't' in a procedural context
  count = count + 1;
end

property p1;
  disable iff (a)
  @(posedge clk) count == 7 |-> $realtime - t < 50.5;
endproperty
`endif

property p2;
  time l_t;
  @(posedge clk)
  (count == 0, l_t = $realtime) ##1 (count == 7)[->1] |->
  $realtime - l_t < 50.5;
endproperty

endmodule
