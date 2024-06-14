/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// IEEE Std 1364-2005
//   8. User-defined primitives (UDPs)
//     8.7 Mixing level-sensitive and edge-sensitive descriptions
//       In this example, the preset and clear logic is level-sensitive. Whenever the preset and
//       clear combination is 01, the output has value 1. Similarly, whenever the preset and clear
//       combination has value 10, the output has value 0.

primitive jk_edge_ff (q, clock, j, k, preset, clear);
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

  jk_edge_ff jk_inst (q, clock, j, k, preset, clear);
endmodule
