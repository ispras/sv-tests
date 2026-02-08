// IEEE Std 1800-2012
//   31. Timing checks
//    31.6 Notifiers: user-defined responses to timing violations

// ! TYPE: POSITIVE

module top(input clk, data, output reg notifier);
  specify
    $setup(data, posedge clk, 10, notifier);
    $width(posedge clk, 16, 0, notifier);
  endspecify
endmodule
