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
//         14.2.4.4 The ifnone condition
//           Example 2 — The following module path description combination is illegal because it
//           combines a state-dependent path using an ifnone condition and an unconditional path
//           for the same module path.

// ! TYPE: POSITIVE

module test(a, b, out);

  input a, b;
  output out;

  specify
    if (a) (b => out) = (2,2);
    if (b) (a => out) = (2,2);
    ifnone (a => out) = (1,1);
    (a => out) = (1,1);
  endspecify
endmodule
