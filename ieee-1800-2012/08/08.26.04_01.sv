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
//    8.26 Interface classes
//     8.26.4 Type usage restrictions

// ! TYPE: NEGATIVE

module top;

  typedef interface class IntfD;

  class ClassB implements IntfD #(bit); // illegal
    virtual function bit[1:0] funcD();
  endclass : ClassB

  // This interface class declaration must be declared before 'ClassB'
  interface class IntfD #(type T1 = logic);
    typedef T1[1:0] T2;
    pure virtual function T2 funcD();
  endclass : IntfD

endmodule
