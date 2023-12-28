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
//         During the evaluation of an expression, interim results shall take the size of the
//         largest operand (in case of an assignment, this also includes the left-hand side). Care
//         has to be taken to prevent loss of a significant bit during expression evaluation. The
//         example below describes how the bit lengths of the operands could result in the loss
//         of a significant bit.

module test;
  reg [15:0] a, b, answer; // 16-bit regs

  initial begin
    `ifdef NEGATIVE_TEST
    answer = (a + b) >> 1; //will not work properly
    `endif
    answer = (a + b + 0) >> 1; //will work correctly
  end

endmodule
