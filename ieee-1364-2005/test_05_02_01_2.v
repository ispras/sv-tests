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
//    5.2 Operands
//      5.2.1 Vector bit-select and part-select addressing

// ! TYPE: POSITIVE

module test;

  reg [31: 0] big_vect;
  reg [0 :31] little_vect;
  reg [63: 0] dword;
  integer sel;

  initial begin
    big_vect[ 0 +: 8]    = 8'b1010_1010; // == big_vect[ 7 : 0]
    big_vect[15 -: 8]    = 8'b1010_1010; // == big_vect[15 : 8]
    little_vect[ 0 +: 8] = 8'b1010_1010; // == little_vect[0 : 7]
    little_vect[15 -: 8] = 8'b1010_1010; // == little_vect[8 :15]
    dword[8*sel +: 8]    = 8'b1010_1010; // variable part-select with fixed width
  end
endmodule
