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
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.5 Connecting module instance ports by ordered list
//         The following example illustrates a top-level module ( topmod ) that instantiates a
//         second module ( modB ). Module modB has ports that are connected by an ordered list. The
//         connections made are as follows:
//         — Port wa in the modB definition connects to the bit-select v[0] in the topmod module.
//         — Port wb connects to v[3].
//         — Port c connects to w.
//         — Port d connects to v[4].
//         In the modB definition, ports wa and wb are declared as inouts while ports c and d are
//         declared as input.

module modB(wa, wb, c, d);
  inout wa, wb;
  input c, d;
  tranif1 g1(wa, wb, cinvert);
  not #(2, 6) n1(cinvert, intvar);
  and #(6, 5) g2(intvar, c, d);
endmodule

module topmod;
  wire [4:0] v;
  wire a, b, c, w;
  modB b1(v[0], v[3], w, v[4]);
endmodule
