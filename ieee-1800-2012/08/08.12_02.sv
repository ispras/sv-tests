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
//    8.12 Assignment, renaming, and copying

// ! TYPE: POSITIVE

module top;

  class baseA ;
    integer j = 5;
  endclass

  class B ;
    integer i = 1;
    baseA a = new;
  endclass

  class xtndA extends baseA;
    rand int x;
    constraint cst1 { x < 10; }
  endclass

  function integer test;
    xtndA xtnd1;
    baseA base2, base3;
    B b1 = new; // Create an object of class 'B'
    B b2 = new b1; // Create an object that is a copy of 'b1'
    b2.i = 10; // 'i' is changed in 'b2', but not in 'b1'
    b2.a.j = 50; // change 'a.j', shared by both 'b1' and 'b2'
    test = b1.i; // 'test' is set to 1 ('b1.i' has not changed)
    test = b1.a.j; // 'test' is set to 50 ('a.j' has changed)
    xtnd1 = new; // create a new instance of class 'xtndA'
    xtnd1.x = 3;
    base2 = xtnd1; // 'base2' refers to the same object as 'xtnd1'
    base3 = new base2; // Creates a shallow copy of 'xtnd1'
  endfunction

endmodule
