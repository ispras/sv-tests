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
//     5.5 Signed expressions
//       Controlling the sign of an expression is important if consistent results are to be
//       achieved. In addition to the rules outlined in 5.5.1 through 5.5.4, two system functions
//       shall be used to handle type casting on expressions: $signed() and $unsigned(). These
//       functions shall evaluate the input expression and return a value with the same size and
//       value of the input expression and the type defined by the function:
//       $signed - returned value is signed
//       $unsigned - returned value is unsigned

// ! TYPE: POSITIVE

module test;

  reg [7:0] regA, regB;
  reg signed [7:0] regS;

  initial begin
    regA = $unsigned(-4);     // regA = 8'b11111100
    regB = $unsigned(-4'sd4); // regB = 8'b00001100
    regS = $signed(4'b1100);  // regS = -4
  end
endmodule
