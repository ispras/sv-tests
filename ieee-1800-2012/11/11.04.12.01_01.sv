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
//    11.4 Operator descriptions
//     11.4.12 Concatenation operators
//      11.4.12.1 Replication operator

// ! TYPE: VARYING

module top;

  parameter w = 1;
  parameter a = 1, b = 1;

  // This example replicates 'w' four times.
  bit A1 = {4{w}}; // yields the same value as '{w, w, w, w}'

`ifdef NEGATIVE_TEST
  // The following examples show illegal replications:
  bit A2 = {1'bz{1'b0}}; // illegal
  bit A3 = {1'bx{1'b0}}; // illegal
`endif

  // The next example illustrates a replication nested within a concatenation:
  bit A4 = {b, {3{a, b}}}; // yields the same value as '{b, a, b, a, b, a, b}'

endmodule
