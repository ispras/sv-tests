/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   16. Assertions
//    16.15 Disable iff resolution

// ! TYPE: POSITIVE

module top(input logic a, b, clk, rst, rst1);

default disable iff rst;

property p1;
  disable iff (rst1) a |=> b;
endproperty

// Disable condition is 'rst1' - explicitly specified within 'a1'
a1 : assert property (@(posedge clk) disable iff (rst1) a |=> b);

// Disable condition is 'rst1' - explicitly specified within 'p1'
a2 : assert property (@(posedge clk) p1);

// Disable condition is 'rst' - no explicit specification, inferred from
// default disable iff declaration
a3 : assert property (@(posedge clk) a |=> b);

// Disable condition is 1'b0. This is the only way to
// cancel the effect of default disable.
a4 : assert property (@(posedge clk) disable iff (1'b0) a |=> b);

endmodule
