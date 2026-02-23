// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.7 Member selects and hierarchical names

// ! TYPE: VARYING

package p;
  struct {int x;} s1;
  struct {int x;} s2;
  function void f();
    int x;
  endfunction
endpackage

module top;
  import p::*;
  if (1) begin : s1
    initial begin
      s1.x = 1; // dotted name 1
      s2.x = 1; // dotted name 2
      f.x = 1; // dotted name 3
`ifdef NEGATIVE_TEST
      f2.x = 1; // dotted name 4
`endif
    end
    int x;
`ifdef NEGATIVE_TEST
    some_module s2();
`endif
  end
endmodule
