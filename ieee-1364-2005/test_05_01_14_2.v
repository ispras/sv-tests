/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1364-2005
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 2

// ! TYPE: VARYING

module test;

  reg a;
  reg b;
  reg w;
  reg [6:0] result;

  initial begin
    // This example replicates w four times.
    result[3:0] = {4{w}};    // This yields the same value as {w, w, w, w}

`ifdef NEGATIVE_TEST
    // The following examples show illegal replications:
    result = {1'bz{1'b0}};   // illegal
    result = {1'bx{1'b0}};   // illegal
`endif

    // The next example illustrates a replication nested within a concatenation:
    result = {b, {3{a, b}}}; // This yields the same value as
                             // {b, a, b, a, b, a, b}
  end
endmodule
