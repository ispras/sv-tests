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

// ! TYPE: VARYING

`define lsb_base_expr (4 - 1)
`define msb_base_expr (2 * 3)
`define width_expr    (1 + 1)

module test;

  reg [15:0] big_vect;
  reg [0:15] little_vect;

  initial begin
       big_vect[`lsb_base_expr +: `width_expr] = 8'b1010_1010;
    little_vect[`msb_base_expr +: `width_expr] = 8'b1010_1010;
       big_vect[`msb_base_expr -: `width_expr] = 8'b1010_1010;
    little_vect[`lsb_base_expr -: `width_expr] = 8'b1010_1010;
  end
endmodule
