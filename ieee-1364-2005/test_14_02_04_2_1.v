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
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.4 State-dependent paths
//         14.2.4.2 Simple state-dependent paths
//           The following example uses state-dependent paths to describe the timing of an XOR gate.
//           In this example, the first two state-dependent paths describe a pair of output rise and
//           fall delay times when the XOR gate (x1) inverts a changing input. The last two
//           state-dependent paths describe another pair of output rise and fall delay times when
//           the XOR gate buffers a changing input.

module XORgate (a, b, out);
  input a, b;
  output out;

  xor x1(out, a, b);

  specify
    specparam noninvrise = 1, noninvfall = 2;
    specparam invertrise = 3, invertfall = 4;
    if  (a) (b   => out) = (invertrise, invertfall);
    if  (b) (a   => out) = (invertrise, invertfall);
    if  (~a)(b   => out) = (noninvrise, noninvfall);
    if  (~b)(a   => out) = (noninvrise, noninvfall);
  endspecify
endmodule
