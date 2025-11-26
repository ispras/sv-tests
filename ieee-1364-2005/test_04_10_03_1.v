// IEEE Std 1364-2005
//   4. Data types
//    4.10 Parameters
//      4.10.3 Specify parameters
//        Example 1

// ! TYPE: POSITIVE

module test;
  specify
    specparam tRise_clk_q = 150, tFall_clk_q = 200;
    specparam tRise_control = 40, tFall_control = 50;
  endspecify
endmodule
