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
//   7.5 Dynamic arrays
//    7.5.1 New[ ]

// ! TYPE: POSITIVE

module top;

  integer addr[];// Declare the dynamic array.

  initial begin
    addr = new[100]; // Create a 100-element array.

    // Double the array size, preserving previous values.
    // Preexisting references to elements of 'addr' are outdated.
    addr = new[200](addr);
  end

endmodule
