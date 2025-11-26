// IEEE Std 1364-2005
//   12. Hierarchical structures
//     12.7 Scope rules
//       The following example shows how variables can be accessed directly or with hierarchical
//       names.

// ! TYPE: POSITIVE

module test;

  task t;
    reg s;
    begin : b
      reg r;
      t.b.r = 0; // These three lines access the same variable r
      b.r = 0;
      r = 0;
      t.s = 0;   // These two lines access the same variable s
      s = 0;
    end
  endtask
endmodule
