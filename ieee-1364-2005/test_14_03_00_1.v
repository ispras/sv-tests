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
//   14. Specify blocks
//     14.3 Assigning delays to module paths
//       In the example above, the specify parameters declared following the specparam keyword
//       specify values for the module path delays. The module path assignments assign those module
//       path delays to the module paths.

module test(clk, clr, pre, q);
  input clk, clr, pre;
  output q;

  specify
    // Specify Parameters
    specparam  tRise_clk_q = 45:150:270, tFall_clk_q=60:200:350;
    specparam  tRise_Control = 35:40:45, tFall_control=40:50:65;
    // Module Path Assignments
    (clk => q) = (tRise_clk_q, tFall_clk_q);
    (clr, pre *> q) = (tRise_control, tFall_control);
  endspecify
endmodule
