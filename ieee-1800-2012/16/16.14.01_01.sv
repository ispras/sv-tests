// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.1 Assert statement

// ! TYPE: POSITIVE

module top(input clk, rst, in1, in2);

  global clocking sys @(posedge clk); endclocking

  property abc(a, b, c);
    disable iff (a == 2) @(posedge clk) not (b ##1 c);
  endproperty

  env_prop: assert property (@($global_clock) abc(rst, in1, in2))
    $display("env_prop passed."); else $display("env_prop failed.");

endmodule
