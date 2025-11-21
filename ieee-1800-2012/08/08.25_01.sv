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
//   8. Classes
//    8.25 Parameterized classes

// ! TYPE: POSITIVE

module top;

  class vector #(int size = 1);
    bit [size-1:0] a;
  endclass

  class stack #(type T = int);
    local T items[];
    task push(T a);
    endtask
    task pop(ref T a);
    endtask
  endclass

  vector #(10) vten; // object with 'vector' of size 10
  vector #(.size(2)) vtwo; // object with 'vector' of size 2
  typedef vector #(4) Vfour; // Class with 'vector' of size 4

  stack is; // default: a 'stack' of ints
  stack #(bit[1:10]) bs; // a 'stack' of 10-bit vector
  stack #(real) rs; // a 'stack' of 'real' numbers

endmodule
