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
//     8.26.3 Type access

// ! TYPE: VARYING

module top;

  interface class IntfC;
    typedef enum { ONE, TWO, THREE } t1_t;
    pure virtual function t1_t funcC();
  endclass : IntfC

  class ClassA implements IntfC;
`ifdef NEGATIVE_TEST
    t1_t t1_i; // error, 't1_t' is not inherited from 'IntfC'
`endif
    virtual function IntfC::t1_t funcC(); // correct
      return (IntfC::ONE); // correct
    endfunction : funcC
  endclass : ClassA

endmodule
