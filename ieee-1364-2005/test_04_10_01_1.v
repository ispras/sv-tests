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
//   4. Data types
//    4.10 Parameters
//      4.10.1 Module parameters

module test;
  parameter msb = 7;                 // defines msb as a constant value 7
  parameter e = 25, f = 9;           // defines two constant numbers
  parameter r = 5.7;                 // declares r as a real parameter
  parameter byte_size = 8,
            byte_mask = byte_size - 1;
  parameter average_delay = (r + f) / 2;
  parameter signed [3:0] mux_selector = 0;
  parameter real r1 = 3.5e17;
  parameter p1 = 13'h7e;
  parameter [31:0] dec_const = 1'b1; // value converted to 32 bits
  parameter newconst = 3'h4;         // implied range of [2:0]
  parameter newconst2 = 4;            // implied range of at least [31:0]
endmodule
