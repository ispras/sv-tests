// IEEE Std 1800-2012
//   17. Checkers
//    17.2 Checker declaration

// ! TYPE: POSITIVE

module top(input clk1, clk2, rst1, rst2);

  default clocking @clk1; endclocking
  default disable iff rst1;

  checker c1;
    // Inherits '@clk1' and 'rst1'
  endchecker : c1

  checker c2;
    // Explicitly redefines its default values
    default clocking @clk2; endclocking
    default disable iff rst2;
  endchecker : c2

endmodule
