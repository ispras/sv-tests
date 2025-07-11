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
//           Example 4 — The two state-dependent path declarations shown below are not legal because
//           even though they have different conditions, the destinations are not specified in the
//           same way: the first destination is a part-select, the second is a bit-select.

// ! TYPE: VARYING

module test(clk, data, q, reset, cntrl);

  input clk, reset, cntrl;
  output data;
  output [4:0] q;

  specify
`ifdef NEGATIVE_TEST
    if (reset)
      (posedge clk => (q[3:0]:data)) = (10,5);
    if (!reset)
      (posedge clk => (q[0]:data)) = (15,8);
`endif
  endspecify
endmodule
