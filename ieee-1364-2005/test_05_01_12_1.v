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
//      5.1.12 Shift operators
//        Example 1 - In this example, the reg result is assigned the binary value 0100,
//        which is 0001 shifted to the left two positions and zero-filled.

// ! TYPE: POSITIVE

module shift;

  reg [3:0] start, result;

  initial begin
    start = 1;
    result = (start << 2);
  end
endmodule
