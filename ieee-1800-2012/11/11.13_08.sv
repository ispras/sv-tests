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

  logic a;
  let p1(x) = x;
  let p2(x) = $past(x, , , @(posedge clock));
  let s(x) = $sampled(x);
  always_comb begin
    a1: assert(p1(a));
    a2: assert(p2(a));
    a3: assert(s(a));
  end
  a4: assert property(@(posedge clock) p1(a));

endmodule
