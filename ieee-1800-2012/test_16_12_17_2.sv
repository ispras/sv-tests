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
//     16.12.17 Recursive properties

// ! TYPE: VARYING

module test;

reg b;

property prop_always(p);
  p and (1'b1 |=> prop_always(p));
endproperty

`ifdef NEGATIVE_TEST
property illegal_recursion_1(p);
  not prop_always(not p);
endproperty

property illegal_recursion_2(p);
  p and (1'b1 |=> not illegal_recursion_2(p));
endproperty

property illegal_recursion_3(p);
  disable iff (b)
  p and (1'b1 |=> illegal_recursion_3(p));
endproperty
`endif

property legal_3(p);
  disable iff (b) prop_always(p);
endproperty

`ifdef NEGATIVE_TEST
property illegal_recursion_4(p);
  p and (1'b1 |-> illegal_recursion_4(p));
endproperty
`endif

endmodule
