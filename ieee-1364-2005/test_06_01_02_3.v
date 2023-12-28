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
//   6. Expressions
//     6.1 Continuous assignments
//       6.1.2 The continuous assignment statement
//         The following example describes a module with one 16-bit output bus. It selects between
//         one of four input busses and connects the selected bus to the output bus.

module select_bus(busout, bus0, bus1, bus2, bus3, enable, s);
  parameter n = 16;
  parameter Zee = 16'bz;
  output [1:n] busout;
  input [1:n] bus0, bus1, bus2, bus3;
  input enable;
  input [1:2] s;
  tri [1:n] data;         // net declaration
  // net declaration with continuous assignment
  tri [1:n] busout = enable ? data : Zee;
  // assignment statement with four continuous assignments
  assign
    data = (s == 0) ? bus0 : Zee,
    data = (s == 1) ? bus1 : Zee,
    data = (s == 2) ? bus2 : Zee,
    data = (s == 3) ? bus3 : Zee;
endmodule
