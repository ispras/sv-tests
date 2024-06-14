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
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.6 Connecting module instance ports by name
//         In the following example, the instantiating module connects its signals topA and topB to
//         the ports In1 and Out defined by the module ALPHA. At least one port provided by ALPHA
//         is unused; it is named In2. There could be other unused ports not mentioned in the
//         instantiation.

module ALPHA(Out, In1, In2);
  output Out;
  input In1, In2;

endmodule

module test(topA, topB);
  input topA, topB;

  ALPHA instance1 (.Out(topB),.In1(topA),.In2());
endmodule
