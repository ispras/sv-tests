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
//   9. Behavioral modeling
//     9.4 Conditional statement
//       Because the numeric value of the if expression is tested for being zero, certain
//       shortcuts are possible. For example, the following two statements express the same logic.

// ! TYPE: POSITIVE

module test(expression);

  input expression;
  reg a;

  initial begin
    if (expression != 0)
      a = 1;
    if (expression)
      a = 0;
  end
endmodule
