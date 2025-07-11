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
//          4.9.3.1.3 Memory differences

// ! TYPE: POSITIVE

module test;
  parameter n = 32;
  reg [1:n] rega; // An n-bit register is not the same
  reg mema [1:n]; // as a memory of n 1-bit registers
endmodule
