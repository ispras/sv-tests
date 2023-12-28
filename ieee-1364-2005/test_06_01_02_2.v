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
//   6. Expressions
//     6.1 Continuous assignments
//       6.1.2 The continuous assignment statement
//         The following is an example of the use of a continuous assignment to model a 4-bit adder
//         with carry. The  assignment could not be specified directly in the declaration
//         of the nets because it requires a concatenation on the left-hand side.

module adder (sum_out, carry_out, carry_in, ina, inb);
  output [3:0] sum_out;
  output carry_out;
  input [3:0] ina, inb;
  input carry_in;
  wire carry_out, carry_in;
  wire [3:0] sum_out, ina, inb;

  assign {carry_out, sum_out} = ina + inb + carry_in;
endmodule
