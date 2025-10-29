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
//    16.16 Clock resolution
//     16.16.1 Semantic leading clocks for multiclocked sequences and properties

// ! TYPE: VARYING

module top();

wire clk1, clk2;
logic a, b;

assign clk2 = clk1;

`ifdef NEGATIVE_TEST
a1: assert property (@(clk1) a and @(clk2) b); // Illegal
`endif

a2: assert property (@(clk1) a and @(clk1) b); // OK

always @(posedge clk1) begin
`ifdef NEGATIVE_TEST
  a3: assert property(a and @(posedge clk2)); // Illegal
`endif

  a4: assert property(a and @(posedge clk1) a); // OK
end

endmodule
