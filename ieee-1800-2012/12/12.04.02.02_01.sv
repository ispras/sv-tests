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
//   12. Procedural programming statements
//    12.4 Conditional if–else statement
//     12.4.2 unique-if, unique0-if, and priority-if
//      12.4.2.2 If statement violation reports and multiple processes

// ! TYPE: POSITIVE

module top;

  bit c, d, e, f, some_stuff, other_stuff;

  function bit f1(bit a, bit not_a);
    a1: unique if (a) return a;
    else if (not_a) return not_a;
  endfunction

  always_comb begin : b1
    some_stuff = f1(c, d);
  end
  always_comb begin : b2
    other_stuff = f1(e, f);
  end

endmodule
