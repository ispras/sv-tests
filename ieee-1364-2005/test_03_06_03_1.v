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
//    3.6 Strings
//      3.6.3 Special characters in strings

module test;
  reg [8*32:0] p00 = "\n";
  reg [8*32:0] p01 = "\t";
  reg [8*32:0] p02 = "\\";
  reg [8*32:0] p03 = "\"";
  reg [8*32:0] p04 = "\123";
endmodule