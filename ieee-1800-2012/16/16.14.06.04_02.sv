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
//      16.14.6.4 Disabling procedural concurrent assertions

// ! TYPE: POSITIVE

module top(clk, a, b, c, clear_b2);

input clk;
input a;
input b;
input [7:0] c;
input clear_b2;

default clocking @(posedge clk); endclocking

always @(a or b or c) begin : b2
  if (c == 8'hff) begin
    a2: assert property (a && b);
  end else begin
    a3: assert property (a || b);
  end
end

always @(clear_b2) begin : b3
  disable b2;
end

endmodule
