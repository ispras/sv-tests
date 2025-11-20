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
//    7.4.4 Memories

// ! TYPE: POSITIVE

module top;

  logic [7:0] mema [0:255]; // declares a memory array of 256 8-bit
                            // elements. The array indices are 0 to 255
  logic data;
  int addr = 5;

  initial begin
    mema[5] = 0; // Write to word at address '5'
    data = mema[addr]; // Read word at address indexed by 'addr'
  end

endmodule
