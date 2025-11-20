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
//   7.8 Associative arrays

// ! TYPE: POSITIVE

module top;

  class myClass;
    int id;
    function new(int id);
      this.id = id;
    endfunction
  endclass

  integer i_array[*]; // associative array of 'integer' (unspecified index)
  bit [20:0] array_b[string]; // associative array of 21-bit vector, indexed by string
  event ev_array[myClass]; // associative array of 'event' indexed by class 'myClass'

endmodule
