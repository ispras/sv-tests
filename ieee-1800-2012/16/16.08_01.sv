// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences

// ! TYPE: VARYING

module top(clk);

input clk;
reg x;
reg y;

sequence delay_example(x, y, min, max, delay1);
  x ##delay1 y[*min:max];
endsequence

// Legal
a1: assert property (@(posedge clk) delay_example(x, y, 3, 4, 2));

integer z, d;

`ifdef NEGATIVE_TEST
// Illegal: 'z' and 'd' are not elaboration-time constants
a2_illegal: assert property (@(posedge clk) delay_example(x, y, z, $, d));
`endif

endmodule
