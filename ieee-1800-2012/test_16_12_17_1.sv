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

module test;

reg s1, s2;
reg phase1_prop, phase2_prop;

property prop_always(p);
  p and (1'b1 |=> prop_always(p));
endproperty

property p1(s,p);
  s |=> prop_always(p);
endproperty

property prop_weak_until(p,q);
  q or (p and (1'b1 |=> prop_weak_until(p, q)));
endproperty

property p2(s,p,q);
  s |=> prop_weak_until(p,q);
endproperty

property check_phase1;
  s1 |-> (phase1_prop and (1'b1 |=> check_phase2));
endproperty

property check_phase2;
  s2 |-> (phase2_prop and (1'b1 |=> check_phase1));
endproperty

endmodule
