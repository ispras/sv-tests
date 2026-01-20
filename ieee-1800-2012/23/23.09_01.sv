// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.9 Scope rules

// ! TYPE: POSITIVE

package p;
  function void f();
    $display("p::f");
  endfunction
endpackage

module top;
  task t;
  logic s;
    begin: b
      logic r;
      t.b.r = 0; // These three lines access the same variable 'r'
      b.r = 0;
      r = 0;
      t.s = 0; // These two lines access the same variable 's'
      s = 0;
    end
  endtask
endmodule
