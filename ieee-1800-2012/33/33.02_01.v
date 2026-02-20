// IEEE Std 1800-2012
//   33. Configuring the contents of a design
//    33.2 Overview

// ! TYPE: POSITIVE

module top();
  adder a1();
  adder a2();
endmodule

config cfg1; // specify rtl 'adder' for 'top.a1', gate-level 'adder' for 'top.a2'
  design rtlLib.top;
  default liblist rtlLib;
  instance top.a2 liblist gateLib;
endconfig
