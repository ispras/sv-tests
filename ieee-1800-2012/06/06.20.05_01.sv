// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.5 Specify parameters

// ! TYPE: POSITIVE

module top;
  specify
    specparam tRise_clk_q = 150, tFall_clk_q = 200;
    specparam tRise_control = 40, tFall_control = 50;
  endspecify
endmodule
