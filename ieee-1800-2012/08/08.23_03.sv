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

// ! TYPE: VARYING

module top;

  class Outer;
    int outerProp;
    local int outerLocalProp;
    static int outerStaticProp;
    static local int outerLocalStaticProp;
    class Inner;
      function void innerMethod(Outer h);
        outerStaticProp = 0; // Legal, same as 'Outer::outerStaticProp'
        outerLocalStaticProp = 0; // Legal, nested classes may access local's in outer class
`ifdef NEGATIVE_TEST
        outerProp = 0; // Illegal, unqualified access to non-static outer
`endif
        h.outerProp = 0; // Legal, qualified access.
        h.outerLocalProp = 0; // Legal, qualified access and locals to outer class allowed.
      endfunction
    endclass
  endclass

endmodule
