// IEEE Std 1800-2012
//   16. Assertions
//    16.8 Declaring sequences
//     16.8.1 Typed formal arguments in sequence declarations

// ! TYPE: POSITIVE

module top(clk);

  reg x, y, z;
  input clk;

  global clocking sys @(posedge clk); endclocking

  sequence delay_arg_example (max, shortint delay1, delay2, min);
    x ##delay1 y[*min:max] ##delay2 z;
  endsequence

  parameter my_delay = 2;

  cover property (@($global_clock)
                  delay_arg_example(4, my_delay, my_delay - 1, 3));

  // The cover property above is equivalent to the following:
  // cover property (x ##2 y[*3:$] ##1 z);

endmodule
