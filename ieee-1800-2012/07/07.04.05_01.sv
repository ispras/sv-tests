/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//  7. Aggregate data types
//   7.4 Packed and unpacked arrays
//    7.4.5 Multidimensional arrays

// ! TYPE: POSITIVE

module top;

  bit [3:0] [7:0] joe [1:10]; // 10 elements of 4 8-bit bytes
                              // (each element packed into 32 bits)

  initial begin
    joe[9] = joe[8] + 1; // 4 byte add
    joe[7][3:2] = joe[6][1:0]; // 2 byte copy
  end

endmodule
