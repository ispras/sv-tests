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
//   7.12 Array manipulation methods
//    7.12.3 Array reduction methods

// ! TYPE: POSITIVE

module top;

  byte b[] = { 1, 2, 3, 4 };
  logic [7:0] m [2][2] = '{ '{5, 10}, '{15, 20} };
  logic bit_arr [1024];
  int y;

  initial begin
    y = b.sum; // 'y' becomes 10 => 1 + 2 + 3 + 4
    y = b.product; // 'y' becomes 24 => 1 * 2 * 3 * 4
    y = b.xor with ( item + 4 ); // 'y' becomes 12 => 5 ^ 6 ^ 7 ^ 8

    y = m.sum with (item.sum with (item)); // 'y' becomes 50 => 5+10+15+20

    y = bit_arr.sum with ( int'(item) ); // forces result to be 32-bit
  end

endmodule
