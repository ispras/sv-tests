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
//     5.4 Expression bit lengths
//       5.4.2 Example of expression bit-length problem
//         In the following example the $display statement will display "answer = 01000". By itself,
//         the expression a&b would have the bit length 4, but because it is in the context of the
//         conditional expression, which uses the maximum bit length, the expression a&b actually
//         has length 5, the length of d .

module bitlength();
  reg [3:0] a,b,c;
  reg [4:0] d;
  initial begin
    a = 9;
    b = 8;
    c = 1;
    $display ("answer = %b", c ? (a&b) : d);
  end
endmodule
