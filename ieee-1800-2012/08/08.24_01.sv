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
//    8.24 Out-of-block declarations

// ! TYPE: POSITIVE

module top;

  typedef real T;

  class C;
    typedef int T;
    extern function T f();
    extern function real f2();
  endclass

  function C::T C::f(); // the return must use the scope resolution
                        // since the type is defined within the class
    return 1;
  endfunction

  function real C::f2();
    return 1.0;
  endfunction

endmodule
