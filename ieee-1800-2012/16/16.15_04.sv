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

module top(input logic a, b, clk, rst);

property p2;
  disable iff (rst) a |=> b;
endproperty

// Disable condition is 'rst' - explicitly specified within 'a5'
a5 : assert property (@(posedge clk) disable iff (rst) a |=> b);

// Disable condition is 'rst' - explicitly specified within 'p2'
a6 : assert property (@ (posedge clk) p2);

// No disable condition
a7 : assert property (@ (posedge clk) a |=> b);
endmodule
