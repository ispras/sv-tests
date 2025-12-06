// IEEE Std 1800-2012
//   17. Checkers
//    17.2 Checker declaration

// ! TYPE: POSITIVE

module top;

  // Simple checker containing concurrent assertions
  checker my_check1 (logic test_sig, event clock);
    default clocking @clock; endclocking
    property p(logic sig);
      sig;
    endproperty
    a1: assert property (p (test_sig));
    c1: cover property (!test_sig ##1 test_sig);
  endchecker : my_check1

endmodule
