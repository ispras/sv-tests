// IEEE Std 1800-2012
//   26. Packages
//    26.5 Search order rules

// ! TYPE: VARYING

package p;
  typedef enum {FALSE, TRUE} BOOL;
  const BOOL c = FALSE;
endpackage

package q;
  const int c = 0;
endpackage

module top;
  import q::*;
  wire a = c; // This statement forces the import of 'q::c';
`ifdef NEGATIVE_TEST
  import p::c; // The conflict with 'q::c' and 'p::c' creates an error.
`endif
endmodule
