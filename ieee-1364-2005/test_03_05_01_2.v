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
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 2 - Sized constant numbers

module test;
  parameter p00 = 4'b1001; // is a 4-bit binary number
  parameter p01 = 5 'D 3;  // is a 5-bit decimal number
  parameter p02 = 3'b01x;  // is a 3-bit number with the least
                           // significant bit unknown
  parameter p03 = 12'hx;   // is a 12-bit unknown number
  parameter p04 = 16'hz;   // is a 16-bit high-impedance number
endmodule
