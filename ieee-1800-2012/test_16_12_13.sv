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
//    16.12 Declaring properties
//     16.12.13 Eventually property

// ! TYPE: POSITIVE

module test;

reg a;

property p1;
  s_eventually a;
endproperty

property p2;
  s_eventually always a;
endproperty

property p3;
  always s_eventually a;
endproperty

property p4;
  eventually [2:5] a;
endproperty

property p5;
  s_eventually [2:5] a;
endproperty

`ifdef NEGATIVE_TEST
property p6;
  eventually [2:$] a; // Illegal
endproperty
`endif

property p7;
  s_eventually [2:$] a;
endproperty

endmodule
