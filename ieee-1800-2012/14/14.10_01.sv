// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.10 Clocking block events

// ! TYPE: POSITIVE

module top(input phi1, inout data, output address);

  clocking dram @(posedge phi1);
    inout data;
    output negedge #1 address;
  endclocking

endmodule
