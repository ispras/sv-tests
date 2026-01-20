// IEEE Std 1800-2012
//   26. Packages
//    26.3 Referencing data in packages

// ! TYPE: VARYING

package p;
  typedef enum {FALSE, TRUE} bool_t;
endpackage

package q;
  typedef enum {ORIGINAL, FALSE} teeth_t;
endpackage

module dut1;
  import p::*;
  import q::teeth_t;
  teeth_t myteeth;
  initial begin
    myteeth = q::FALSE; // OK
`ifdef NEGATIVE_TEST
    myteeth = FALSE; // ERROR: Direct reference to 'FALSE' refers to the
                     // 'FALSE' enumeration literal imported from 'p'
`endif
  end
endmodule

module dut2;
  import p::*;
  import q::teeth_t, q::ORIGINAL, q::FALSE;
  teeth_t myteeth;

  initial begin
    myteeth = FALSE; // OK: Direct reference to 'FALSE' refers to the
                     // 'FALSE' enumeration literal imported from 'q'
  end
endmodule

module top;
  dut1 u_dut1();
  dut2 u_dut2();
endmodule
