// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

module top;
  (* fsm_state *) logic [7:0] state1;
  (* fsm_state=1 *) logic [3:0] state2, state3;
  logic [3:0] reg1; // 'reg1' does NOT have 'fsm_state' set
  (* fsm_state=0 *) logic [3:0] reg2; // nor does 'reg2'
endmodule