// IEEE Std 1364-2005
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       In the example above, the specify parameters declared following the specparam keyword
//       specify values for the module path delays. The module path assignments assign those module
//       path delays to the module paths.

// ! TYPE: POSITIVE

module test(clk, clr, pre, q);

  input clk, clr, pre;
  output q;

  specify
    // Specify Parameters
    specparam  tRise_clk_q = 45:150:270, tFall_clk_q = 60:200:350;
    specparam  tRise_Control = 35:40:45, tFall_control = 40:50:65;
    // Module Path Assignments
    (clk => q) = (tRise_clk_q, tFall_clk_q);
    (clr, pre *> q) = (tRise_Control, tFall_control);
  endspecify
endmodule
