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
//         14.2.4.3 Edge-sensitive state-dependent paths
//           Example 2 — The following example shows two edge-sensitive path declarations, each of
//           which has a unique edge.

module test(clk, data, q);
  input clk, data, q;

  specify
    (posedge clk => (q[0] : data)) = (10, 5);
    (negedge clk => (q[0] : data)) = (20, 12);
  endspecify
endmodule
