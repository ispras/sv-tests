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
//    8.8 Typed constructor calls

// ! TYPE: POSITIVE

module top;

  class C;
    int c1 = 1;
    int c2 = 1;
    int c3 = 1;
    function new(int a);
      c2 = 2;
      c3 = a;
    endfunction
  endclass

  class D extends C;
    int d1 = 4;
    int d2 = c2;
    int d3 = 6;
    function new;
      super.new(d3);
    endfunction
  endclass

  C c1 = D::new; // variable 'c1' of superclass type 'C' now references
                 // a newly constructed object of type 'D'

  D d = new;
  initial begin
    C c2 = d;
  end

endmodule
