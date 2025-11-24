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

module top;

  logic clk, a, b;
  logic p, q, r;

  // let with formal arguments and default value on 'y'
  let eq(x, y = b) = x == y;

  // without parameters, binds to 'a', 'b' above
  let tmp = a && b;

  a1: assert property (@(posedge clk) eq(p, q));
  always_comb begin
    a2: assert (eq(r)); // use default for 'y'
    a3: assert (tmp);
  end

endmodule
