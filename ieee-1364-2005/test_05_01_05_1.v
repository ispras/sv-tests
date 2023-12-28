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
//      5.1.5 Arithmetic operators
//        Table 5-5 - Arithmetic operators defined
module test;
  integer a, b, c;

  initial begin
    c = a + b;  // a plus b
    c = a - b;  // a minus b
    c = a * b;  // a multiplied by b (or a times b)
    c = a / b;  // a divided by b
    c = a % b;  // a modulo b
    c = a ** b; // a to the power of b
  end
endmodule
