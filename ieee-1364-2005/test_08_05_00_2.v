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
//       The following example show how values are applied in a module that
//       instantiates a sequential UDP with an initial statement.

primitive dff1(q, clk, d);

  input clk, d;
  output q;
  reg q;

  initial q = 1'b1;

  table
  // clk    d     q     q+
      r     0  :  ?  :  0  ;
      r     1  :  ?  :  1  ;
      f     ?  :  ?  :  -  ;
      ?     *  :  ?  :  -  ;
  endtable
endprimitive

module dff(q, qb, clk, d);

  input clk, d;
  output q, qb;

  dff1 g1(qi, clk, d);
  buf #3 g2(q, qi);
  not #5 g3(qb, qi);
endmodule
