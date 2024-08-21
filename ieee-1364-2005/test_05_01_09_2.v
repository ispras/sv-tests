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
//      5.1.9 Logical operators
//        Example 2

module test;

  integer result, a, b, c, size, index, lastone;

  initial begin
    // The following expression performs a logical and of three subexpressions without needing any
    // parentheses:
    result = a < size-1 && b != c && index != lastone;
    // However, it is recommended for readability purposes that parentheses be used to show very
    // clearly the precedence intended, as in the following rewrite of this example:
    result = (a < size-1) && (b != c) && (index != lastone);
  end
endmodule
