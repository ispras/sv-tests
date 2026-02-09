// IEEE Std 1800-2012
//   30. Specify blocks
//    30.3 Specify block declaration

// ! TYPE: POSITIVE

module top(input clk, input d, output q);
  specify
    specparam tRise_clk_q = 150, tFall_clk_q = 200;
    specparam tSetup = 70;

    (clk => q) = (tRise_clk_q, tFall_clk_q);

    $setup(d, posedge clk, tSetup);
  endspecify
endmodule
