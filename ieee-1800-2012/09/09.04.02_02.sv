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
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.2 Event control

// ! TYPE: POSITIVE

module top;

  class Packet;
    int status;
    function new();
      status = 0;
    endfunction
  endclass

  real AOR[]; // dynamic array of reals
  byte stream[$]; // queue of bytes

  // waits for array to be allocated
  initial wait(AOR.size() > 0) $display("Array allocated, size = %0d", AOR.size());

  // waits for total number of 'bits'
  // in stream greater than 60
  initial wait($bits(stream) > 60)
    $display("Queue bits exceeded 60: %0d bits", $bits(stream));


  Packet p = new; // Packet 1 -- Packet is defined in 8.2
  Packet q = new; // Packet 2
  initial fork
    @(p.status); // Wait for status in Packet 1 to change
    @p; // Wait for a change to handle 'p'
    # 10 p = q; // triggers '@p'.
    // '@(p.status)' now waits for status in Packet 2 to change,
    // if not already different from Packet 1
  join

endmodule
