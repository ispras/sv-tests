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
//      5.1.6 Arithmetic expressions with regs and integers

// ! TYPE: POSITIVE

module test;

  integer intA;
  reg [15:0] regA;
  reg signed [15:0] regS;

  initial begin
    intA = -4'd12;
    regA = intA / 3;    // expression result is -4,
                        // intA is an integer data type, regA is 65532
    regA = -4'd12;      // regA is 65524
    intA = regA / 3;    // expression result is 21841,
                        // regA is a reg data type
    intA = -4'd12 / 3;  // expression result is 1431655761.
                        // -4'd12 is effectively a 32-bit reg data type
    regA = -12 / 3;     // expression result is -4, -12 is effectively
                        // an integer data type. regA is 65532
    regS = -12 / 3;     // expression result is -4. regS is a signed reg
    regS = -4'sd12 / 3; // expression result is 1. -4'sd12 is actually 4.
                        // The rules for integer division yield 4/3==1.
  end
endmodule
