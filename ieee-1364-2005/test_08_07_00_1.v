// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.7 Mixing level-sensitive and edge-sensitive descriptions
//       In this example, the preset and clear logic is level-sensitive. Whenever the preset and
//       clear combination is 01, the output has value 1. Similarly, whenever the preset and clear
//       combination has value 10, the output has value 0.

// ! TYPE: POSITIVE

primitive jk_edge_ff(q, clock, j, k, preset, clear);

  output q;
  reg q;
  input clock, j, k, preset, clear;

  table
  // clock  jk pc state output/next state
      ?     ?? 01 : ? : 1 ; // preset logic
      ?     ?? *1 : 1 : 1 ;
      ?     ?? 10 : ? : 0 ; // clear logic
      ?     ?? 1* : 0 : 0 ;
      r     00 00 : 0 : 1 ; // normal clocking cases
      r     00 11 : ? : - ;
      r     01 11 : ? : 0 ;
      r     10 11 : ? : 1 ;
      r     11 11 : 0 : 1 ;
      r     11 11 : 1 : 0 ;
      f     ?? ?? : ? : - ;
      b     *? ?? : ? : - ; // j and k transition cases
      b     ?* ?? : ? : - ;
  endtable
endprimitive

module flip(clock, j, k, preset, clear, q);

  input clock, j, k, preset, clear;
  output q;

  jk_edge_ff jk_inst(q, clock, j, k, preset, clear);
endmodule
