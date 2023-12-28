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
//      5.1.7 Relational operators
//        Example 1
module test;
  integer result, a, foo;

  initial begin
    result = a < foo - 1;   // this expression is the same as
    result = a < (foo - 1); // this expression, but . . .
    result = foo - (1 < a); // this one is not the same as
    result = foo - 1 < a;   // this expression
  end
endmodule
