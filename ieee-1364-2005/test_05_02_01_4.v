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
//        Example 2 - The next example and the bullet items that follow it illustrate the
//        principles of bit addressing. The code declares an 8-bit reg called vect and
//        initializes it to a value of 4. The list describes how the separate bits of that vector
//        can be addressed.

// ! TYPE: POSITIVE

module test;

  reg [7:0] vect;
  reg [3:0] addr;
  reg [7:0] result;

  initial begin
    vect = 4; // fills vect with the pattern 00000100
              // msb is bit 7, lsb is bit 0

    // If the value of addr is 2, then vect[addr] returns 1.
    addr = 2;
    result[0] = vect[addr];

    // If the value of addr is out of bounds, then vect[addr] returns x.
    addr = 123;
    result[0] = vect[addr];

    // If addr is 0, 1, or 3 through 7, vect[addr] returns 0.
    addr = 0;
    result[0] = vect[addr];

    // vect[3:0] returns the bits 0100.
    result[3:0] = vect[3:0];

    // vect[5:1] returns the bits 00010.
    result[5:1] = vect[5:1];

    // vect[expression that returns x] returns x.
    addr = 4'hX;
    result[0] = vect[addr];

    // vect[expression that returns z] returns x.
    addr = 4'hZ;
    result[0] = vect[addr];

    // If any bit of addr is x or z, then the value of addr is x.
    addr = 4'b0x1z;
    result[0] = vect[addr];
  end
endmodule
