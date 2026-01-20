// IEEE Std 1800-2012
//   26. Packages
//    26.3 Referencing data in packages

// ! TYPE: POSITIVE

package p;
  int x;
endpackage

package p2;
  int x;
endpackage

module top;
  import p::*;

  if (1) begin : b
    initial x = 1; // 'p::x'
    import p2::*;
  end
endmodule
