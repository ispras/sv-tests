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
//        Example 1

module test;

  reg a;
  reg b[7:0];
  reg w;
  reg [8:0] result;

  initial begin
    // This example concatenates four expressions:
    result = {a, b[3:0], w, 3'b101};
    // It is equivalent to the following example:
    result = {a, b[3], b[2], b[1], b[0], w, 1'b1, 1'b0, 1'b1};
  end
endmodule
