// IEEE Std 1800-2012
//   17. Checkers
//    17.7 Checker variables

// ! TYPE: POSITIVE

module top;

  checker observer_model(bit valid, reset);
    default clocking @($global_clock); endclocking
    rand bit flag;
    m1: assume property (reset |=> !flag);
    m2: assume property (!reset && flag |=> flag);
    m3: assume property ($rising_gclk(flag) |-> valid);
  endchecker : observer_model

endmodule
