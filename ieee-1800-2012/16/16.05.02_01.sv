// IEEE Std 1800-2012
//   16. Assertions
//    16.5 Concurrent assertions overview
//     16.5.2 Assertion clock

// ! TYPE: POSITIVE

module top (input clk, a);

global clocking @clk; endclocking

assert property(@($global_clock) a);

assert property(@clk a);

endmodule
