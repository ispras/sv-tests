// IEEE Std 1800-2012
//   16. Assertions
//    16.14 Concurrent assertions
//     16.14.2 Assume statement

// ! TYPE: POSITIVE

module top(input clk, req, gnt, rst);

  global clocking sys @(posedge clk); endclocking

  property abc(a, b, c);
    disable iff (c) @(posedge clk) a |=> b;
  endproperty

  env_prop:
    assume property (@($global_clock) abc(req, gnt, rst))
      else $error("Assumption failed.");

endmodule
