// IEEE Std 1800-2012
//   30. Specify blocks
//    30.7 Detailed control of pulse filtering behavior
//     30.7.1 Specify block control of pulse limit values

// ! TYPE: POSITIVE

module top(input clk, data, clr, pre, output q);
  specify
    (clk => q) = 12;
    (data => q) = 10;
    (clr, pre *> q) = 4;
    specparam PATHPULSE$clk$q = (2, 9), PATHPULSE$clr$q = (0, 4),
              PATHPULSE$ = 3;
  endspecify
endmodule
