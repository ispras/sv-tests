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
//        Example 5 - Using underscore character in numbers
module test;
  parameter p00 = 27_195_000;
  parameter p01 = 16'b0011_0101_0001_1111;
  parameter p02 = 32 'h 12ab_f001;
endmodule