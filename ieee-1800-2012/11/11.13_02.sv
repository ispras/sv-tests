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

package let_examples;
  let mult(x, y) = ($bits(x) + $bits(y))'(x * y);
  let at_least_two(sig, rst = 1'b0) = rst || ($countones(sig) >= 2);
endpackage

task write_value;
  input logic [31:0] addr;
  input logic [31:0] value;
endtask

module top;

  import let_examples::*;

  logic [15:0] sig1;
  logic [3:0] sig2;

  logic [31:0] base_addr, displ;
  let addr = base_addr + displ;

  always_comb begin
    q1: assert (at_least_two(sig1));
    q2: assert (at_least_two(~sig2));
  end

  initial write_value(addr, 0);

endmodule
