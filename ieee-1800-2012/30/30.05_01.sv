// IEEE Std 1800-2012
//   30. Specify blocks
//    30.5 Assigning delays to module paths

// ! TYPE: POSITIVE

module top(input clk, clr, pre, output q);
  specify
    // Specify Parameters
    specparam tRise_clk_q = 45:150:270, tFall_clk_q = 60:200:350;
    specparam tRise_control = 35:40:45, tFall_control = 40:50:65;
    // Module Path Assignments
    (clk => q) = (tRise_clk_q, tFall_clk_q);
    (clr, pre *> q) = (tRise_control, tFall_control);
  endspecify
  endmodule
