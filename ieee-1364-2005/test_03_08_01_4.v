// IEEE Std 1364-2005
//   3. Lexical conventions
//    3.8 Attributes
//      3.8.1 Examples
//        Example 4

// ! TYPE: POSITIVE

module mod1;
endmodule

module test;
  (* optimize_power = 0 *)
  mod1 synth1 (/* <port_list> */);
endmodule
