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
//     8.25.1 Class resolution operator for parameterized classes

// ! TYPE: POSITIVE

module top;

  class C #(int p = 1, type T = int);
    extern static function T f();
  endclass

  function C::T C::f();
    return p + C::p;
  endfunction

  initial $display("%0d %0d", C#()::f(),C#(5)::f()); // output is "2 10"

endmodule
