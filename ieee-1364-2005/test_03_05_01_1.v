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
//        Example 1 - Unsized constant numbers

// ! TYPE: VARYING

module test;
  parameter p00 = 659;      // is a decimal number
  parameter p01 = 'h 837FF; // is a hexadecimal number
  parameter p02 = 'o07460;  // is an octal number

`ifdef NEGATIVE_TEST
  parameter p03 = 4af;      // is illegal (hexadecimal formal requires 'h)
`endif
endmodule
