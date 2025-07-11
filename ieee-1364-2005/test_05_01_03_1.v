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
//      5.1.3 Using integer numbers in expressions

// ! TYPE: POSITIVE

module test;

  integer IntA;

  initial begin
    IntA = -12 / 3;      // The result is -4.
    IntA = -'d 12 / 3;   // The result is 1431655761.
    IntA = -'sd 12 / 3;  // The result is -4.
    IntA = -4'sd 12 / 3; // -4'sd12 is the negative of the 4-bit
                         // quantity 1100, which is -4. -(-4) = 4.
                         // The result is 1.
  end
endmodule
