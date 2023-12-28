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
//     16.12.14 Abort properties

module test;

reg clk;
reg go, get, put, stop;
reg a, b;

assert property (@(clk) go ##1 get[*2] |-> (reject_on(stop) put[->2]));

assert property (@(clk) go ##1 get[*2] |-> (sync_reject_on(stop) put[->2]));

assert property (@(clk) go ##1 get[*2] |-> (!stop throughout put[->2]));

property p1; 
  (accept_on(a) p1) and (reject_on(b) p2); 
endproperty

property p2; 
  (accept_on(a) p1) or (reject_on(b) p2);
endproperty

property p3; 
  not (accept_on(a) p1); 
endproperty

property p4; 
  accept_on(a) (reject_on(b) p1); 
endproperty

endmodule
