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
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         This generate construct will select at most one of the generate blocks named u1. The
//         hierarchical name of the gate instantiation in that block would be test.u1.g1. When
//         nesting if-generate constructs, the else always belongs to the nearest if construct.

module test;

  parameter p = 0, q = 0;
  wire a, b, c;

  //---------------------------------------------------------
  // Code to either generate a u1.g1 instance or no instance.
  // The u1.g1 instance of one of the following gates:
  // (and, or, xor, xnor) is generated if
  // {p,q} == {1,0}, {1,2}, {2,0}, {2,1}, {2,2}, {2, default}
  //---------------------------------------------------------

  if (p == 1)
    if (q == 0)
      begin : u1          // If p==1 and q==0, then instantiate
        and g1(a, b, c);  // AND with hierarchical name test.u1.g1
      end
    else if (q == 2)
      begin : u1          // If p==1 and q==2, then instantiate
        or g1(a, b, c);   // OR with hierarchical name test.u1.g1
      end
                          // "else" added to end "if (q == 2)" statement
    else;                 // If p==1 and q!=0 or 2, then no instantiation
  else if (p == 2)
    case (q)
    0, 1, 2:
      begin : u1          // If p==2 and q==0,1, or 2, then instantiate
        xor g1(a, b, c);  // XOR with hierarchical name test.u1.g1
      end
    default :
      begin : u1          // If p==2 and q!=0,1, or 2, then instantiate
        xnor g1(a, b, c); // XNOR with hierarchical name test.u1.g1
      end
    endcase
endmodule
