// IEEE Std 1364-2005
//   15. Timing checks
//     15.5 Notifiers: user-defined responses to timing violations
//       Example 1.

// ! TYPE: POSITIVE

module test(clk, data);

  input clk, data;
  reg notifier;

  specify
    $setup(data, posedge clk, 10, notifier);
    $width(posedge clk, 16, 0, notifier);
  endspecify
endmodule
