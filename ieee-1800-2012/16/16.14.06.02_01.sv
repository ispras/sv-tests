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
//    16.14 Concurrent assertions
//     16.14.6 Embedding concurrent assertions in procedural code
//      16.14.6.2 Procedural assertion flush points

// ! TYPE: POSITIVE

module top(clk, a);

input clk;
input a;
logic not_a;

assign not_a = !a;

default clocking @(posedge clk); endclocking

always_comb begin : b1
  // Probably better to not use consts in this example
  // ...but using them to illustrate effects of flushing method
  a1: assert property (const'(not_a) != const'(a));
end

endmodule
