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
//   8. User-defined primitives (UDPs)
//     8.2 Combinational UDPs
//       Using ?, the description of a multiplexer can be abbreviated as follows.

module test;
  input control, dataA, dataB;
  output mux;
  multiplexer mult(mux, control, dataA, dataB);
endmodule

primitive multiplexer (mux, control, dataA, dataB);
  output mux;
  input control, dataA, dataB;
  table
    // control  dataA  dataB  mux
    0     1     ?  :  1 ;   // ? = 0 1 x
    0     0     ?  :  0 ;
    1     ?     1  :  1 ;
    1     ?     0  :  0 ;
    x     0     0  :  0 ;
    x     1     1  :  1 ;
  endtable
endprimitive
