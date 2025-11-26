// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.1 Typed formal arguments in sequence declarations

// ! TYPE: POSITIVE

module top(clk);

reg x, y, z;
input clk;

sequence event_arg_example (event ev);
  @(ev) x ##1 y;
endsequence

cover property (event_arg_example(posedge clk));

// The cover property above is equivalent to the following:
cover property (@(posedge clk) x ##1 y);

endmodule
