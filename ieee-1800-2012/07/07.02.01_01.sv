// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.2 Structures
//    7.2.1 Packed structures

// ! TYPE: VARYING

module top;

  struct packed signed {
    int a;
    shortint b;
    byte c;
    bit [7:0] d;
  } pack1; // 'signed', 2-state

  struct packed unsigned {
    time a;
    integer b;
    logic [31:0] c;
  } pack2; // 'unsigned', 4-state

`ifdef NEGATIVE_TEST
  typedef struct signed {
    int f1 ;
    logic f2 ;
  } sIllegalSignedUnpackedStructType; // illegal declaration
`endif

endmodule
