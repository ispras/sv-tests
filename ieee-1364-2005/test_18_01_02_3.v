// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.2 Specifying variables to be dumped ($dumpvars)
//         Example 3 - This example shows how the $dumpvars task can specify both modules and
//         individual variables. This call shall dump all variables in module mod1 and in all module
//         instances below mod1, along with variable net1 in module mod2. The argument 0 applies
//         only to the module instance top.mod1 and not to the individual variable top.mod2.net1.

// ! TYPE: POSITIVE

module mod1_type;
  initial begin
  end
endmodule

module mod2_type;

  reg net1;

  initial begin
    net1 = 0;
  end
endmodule

module top;

  mod1_type mod1();
  mod2_type mod2();
  initial begin
    $dumpvars(0, top.mod1, top.mod2.net1);
  end
endmodule
