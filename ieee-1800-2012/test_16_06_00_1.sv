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
//    16.6 Boolean expressions

module test;

reg a;
integer b;
reg [7:0] q[31:0];

property p1;
  $rose(a) |-> q[0];
endproperty

property p2;
  integer l_b;
  ($rose(a), l_b = b) |-> ##[3:10] q[l_b];
endproperty

endmodule
