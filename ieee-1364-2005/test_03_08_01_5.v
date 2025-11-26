// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 5

// ! TYPE: POSITIVE

module test;
  (* fsm_state *) reg [7:0] state1;
  (* fsm_state = 1 *) reg [3:0] state2, state3;
  reg [3:0] reg1; // this reg does NOT have fsm_state set
  (* fsm_state = 0 *) reg [3:0] reg2; // nor does this one
endmodule
