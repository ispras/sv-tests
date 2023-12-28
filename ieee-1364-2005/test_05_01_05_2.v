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
//        Table 5-8 - Examples of modulus and power operators
module test;
  reg result;

  initial begin
    result = 10 % 3;        // Result:   1; Comments: 10/3 yields a remainder of 1.
    result = 11 % 3;        // Result:   2; Comments: 11/3 yields a remainder of 2.
    result = 12 % 3;        // Result:   0; Comments: 12/3 yields no remainder.
    result = -10 % 3;       // Result:  -1; Comments: The result takes the sign of the first operand.
    result = 11 % -3;       // Result:   2; Comments: The result takes the sign of the first operand
    result = -4'd12 % 3;    // Result:   1; Comments: -4'd12 is seen as a large positive number that leaves a remainder of 1 when divided by 3.
    result = 3 ** 2;        // Result:   9; Comments: 3 * 3
    result = 2 ** 3;        // Result:   8; Comments: 2 * 2 * 2
    result = 2 ** 0;        // Result:   1; Comments: Anything to the zero exponent is 1.
    result = 0 ** 0;        // Result:   1; Comments: Zero to the zero exponent is also 1.
    result = 2.0 ** -3'sb1; // Result: 0.5; Comments: 2.0 is real, giving real reciprocal.
    result = 2 ** -3 'sb1;  // Result:   0; Comments: 2 ** -1 = 1/2. Integer division truncates to zero.
    result = 0 ** -1 'bx;   // Result:   0; Comments: 0 ** -1 = 1/0. Integer division by zero is 'bx.
    result = 9 ** 0.5;      // Result: 3.0; Comments: Real square root.
    result = 9.0 ** (1/2);  // Result: 1.0; Comments: Integer division truncates exponent to zero.
    result = -3.0 ** 2.0;   // Result: 9.0; Comments: Defined because real 2.0 is still integral value.
  end
endmodule
