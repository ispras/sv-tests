/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//   16. Assertions
//    16.13 Multiclock support
//     16.13.7 Local variable initialization assignments

// ! TYPE: POSITIVE

module test(clk, clk1, clk2);

input clk, clk1, clk2;
reg a, b, c, d, e, f;

property p;
  logic v = e;
  (@(posedge clk1) (a == v)[*1:$] |-> b)
  and
  (@(posedge clk2) c[*1:$] |-> d == v)
  ;
endproperty

a1: assert property (@(posedge clk) f |=> p);

property p1;
  logic v;
  (@(posedge clk1) (1, v = e) ##0 (a == v)[*1:$] |-> b)
  and
  (@(posedge clk2) (1, v = e) ##0 c[*1:$] |-> d == v)
  ;
endproperty

endmodule
