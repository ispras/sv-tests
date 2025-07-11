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
//    4.9 Arrays
//      4.9.3 Memories
//        4.9.3.1 Array examples
//          4.9.3.1.2 Assignment to array elements

// ! TYPE: POSITIVE

module test;
  reg [7:0] mema[0:255];        // declares a memory mema of 256 8-bit
                                // registers. The indices are 0 to 255
  reg arrayb[7:0][0:255];       // declare a two-dimensional array of
                                // one bit registers
  wire w_array[7:0][5:0];       // declare array of wires
  integer inta[1:64];           // an array of 64 integer values
  time chng_hist[1:1000];       // an array of 1000 time values
  integer t_index;

  initial begin
`ifdef NEGATIVE_TEST
    mema = 0;                   // Illegal syntax- Attempt to write to entire array
    arrayb[1] = 0;              // Illegal Syntax - Attempt to write to elements
                                // [1][0]..[1][255]
    arrayb[1][12:31] = 0;       // Illegal Syntax - Attempt to write to
                                // elements [1][12]..[1][31]
`endif
    mema[1] = 0;                // Assigns 0 to the second element of mema
    arrayb[1][0] = 0;           // Assigns 0 to the bit referenced by indices
                                // [1][0]
    inta[4] = 33559;            // Assign decimal number to integer in array
    chng_hist[t_index] = $time; // Assign current simulation time to
                                // element addressed by integer index
  end
endmodule
