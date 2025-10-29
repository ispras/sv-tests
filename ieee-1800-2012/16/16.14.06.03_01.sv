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
//      16.14.6.3 Procedural concurrent assertions and glitches

// ! TYPE: POSITIVE

module top(clk, en, bar, foo);

input clk;
input en;
input [10:0] bar;
output logic [10:0] foo;

always_comb begin : procedural_block_1
  if (en)
    foo = bar;
end

always_comb begin : procedural_block_2
  p1: assert property ( @(posedge clk) (const'(foo) == const'(bar)) );
end

endmodule
