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
//        Example 4

module test;
  reg [7:0] result;
  reg [1:0] y, w;

  function [1:0] func;
    input [1:0] x;
    begin
      func = x;
    end
  endfunction

  initial begin
    // When a replication expression is evaluated, the operands shall be evaluated exactly once,
    // even if the replication constant is zero. For example:
    result = {4{func(w)}};

    // would be computed as
    y = func(w) ;
    result = {y, y, y, y};
  end
endmodule
