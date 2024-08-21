/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
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
//   4. Data types
//    4.3 Vectors
//      4.3.1 Specifying vectors

module test;
  wand w;                      // a scalar net of type "wand"
  tri [15:0] busa;             // a three-state 16-bit bus
  trireg (small) storeit;      // a charge storage node of strength small
  reg a;                       // a scalar reg
  reg [3:0] v;                 // a 4-bit vector reg made up of (from most to
                               // least significant)v[3], v[2], v[1], and v[0]
  reg signed [3:0] signed_reg; // a 4-bit vector in range -8 to 7
  reg [-1:4] b;                // a 6-bit vector reg
  wire w1, w2;                 // declares two wires
  reg [4:0] x, y, z;           // declares three 5-bit regs
endmodule
