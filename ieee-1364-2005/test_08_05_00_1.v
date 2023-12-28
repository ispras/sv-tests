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
//     8.5 Sequential UDP initialization
//       The following example shows a sequential UDP that contains an initial statement.

module test;
  input s, r;
  output q;
  srff srff_edge(q, s, r);
endmodule

primitive  srff (q, s, r);
  output q;
  reg q;
  input s, r;
  initial q = 1'b1;
  table
  //  s  r   q   q+
      1  0 : ? : 1 ;
      f  0 : 1 : - ;
      0  r : ? : 0 ;
      0  f : 0 : - ;
      1  1 : ? : 0 ;
  endtable
endprimitive
