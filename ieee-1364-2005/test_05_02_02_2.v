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
//      5.2.2 Array and memory addressing
//        The next example declares an array of 256-by-256 eight-bit elements and an array
//        256-by-256-by-8 one-bit elements

module test;

  reg [7:0] twod_array[0:255][0:255];
  wire threed_array[0:255][0:255][0:7];
  reg [7:0] twod_array_result;
  reg threed_array_result;
  integer addr_expr;
  reg [3:0] lower_result;
  reg sixth_bit;
  integer sel;
  reg sel_result;
  reg [3:0] illegal_result;

  initial begin
    twod_array_result = twod_array[addr_expr][addr_expr];
    threed_array_result = threed_array[addr_expr][addr_expr][addr_expr];

    lower_result = twod_array[14][1][3:0]; // access lower 4 bits of word
    sixth_bit = twod_array[1][3][6]; // access bit 6 of word
    sel_result = twod_array[1][3][sel]; // use variable bit-select

`ifdef NEGATIVE_TEST
    illegal_result = threed_array[14][1][3:0]; // Illegal
`endif
  end

endmodule
