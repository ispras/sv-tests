// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.4 Input and output skews

// ! TYPE: POSITIVE

module top(input clk, address, output data);

  clocking dram @(clk);
    input #1ps address;
    input #5 output #6 data;
  endclocking

endmodule
