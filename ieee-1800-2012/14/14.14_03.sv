// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.14 Global clocking

// ! TYPE: POSITIVE

module top;
subsystem1 sub1();
subsystem2 sub2();
endmodule

module subsystem1;
  logic subclk1, req, ack;
  global clocking sub_sys1 @(subclk1); endclocking
  common_checks checks(req, ack);
endmodule

module subsystem2;
  logic subclk2, req, ack;
  global clocking sub_sys2 @(subclk2); endclocking
  common_checks checks(req, ack);
endmodule

module another_module;
  logic another_clk;
  global clocking another_clocking @(another_clk); endclocking
  property p(req, ack);
    @($global_clock) req |=> ack;
  endproperty
endmodule

checker common_checks(logic req, logic ack);
  assert property (another_module.p(req, ack));
endchecker
