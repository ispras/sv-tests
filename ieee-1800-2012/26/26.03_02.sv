// IEEE Std 1800-2012
//   26. Packages
//    26.3 Referencing data in packages

// ! TYPE: VARYING

package p;
  int x;
endpackage

module top;
  import p::*;

  if (1) begin: b
    initial x = 1; // initializes 'p::x'
    int x;
    initial x = 1; // 'top.b.x'
  end
`ifdef NEGATIVE_TEST
  int x;
`endif
endmodule
