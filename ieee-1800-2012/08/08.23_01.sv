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
//    8.23 Class scope resolution operator ::

// ! TYPE: POSITIVE

module top;

  class Base;
    typedef enum { bin, oct, dec, hex } radix;
    static task print(radix r, integer n);
    endtask
  endclass

  Base b = new;
  int bin = 123;

  initial begin
    b.print(Base::bin, bin); // 'Base::bin' and 'bin' are different
    Base::print(Base::hex, 66);
  end

endmodule
