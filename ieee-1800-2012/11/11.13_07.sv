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
//   11. Operators and expressions
//    11.13 Let construct

// ! TYPE: POSITIVE

module top(input clock);

  logic [15:0] a, b;
  logic c, d;
  typedef bit [15:0] bits;

  let ones_match(bits x, y) = x == y;
  let same(logic x, y) = x === y;

  always_comb
    a1: assert(ones_match(a, b));

  property toggles(bit x, y);
    same(x, y) |=> !same(x, y);
  endproperty

  a2: assert property (@(posedge clock) toggles(c, d));

endmodule
