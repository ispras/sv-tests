// IEEE Std 1800-2012
//   25. Interfaces
//    25.10 Access to interface objects

// ! TYPE: VARYING

interface ebus_i;
  integer I; // reference to 'I' not allowed through modport 'mp'
  typedef enum {Y, N} choice;
  choice Q;
  localparam True = 1;
  modport mp(input Q);
endinterface

module top;
  ebus_i ebus();
  sub s1(ebus.mp);
endmodule

module sub(interface.mp i);
  typedef i.choice yes_no; // import type from interface
  yes_no P;
  assign P = i.Q; // refer to 'Q' with a port reference
  initial
    top.ebus.Q = i.Q; // refer to 'Q' with a hierarchical reference
`ifdef NEGATIVE_TEST
  initial
    top.ebus.I = 0; // referring to 'i.I' would not be legal because
                    // is not in modport 'mp'
`endif
endmodule
