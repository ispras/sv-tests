/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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
//    16.16 Clock resolution

// ! TYPE: VARYING

module top(input logic a, b, c, clk);
property q1;
  $rose(a) |-> ##[1:5] b;
endproperty

property q5;
  @(negedge clk) b[*3] |=> !b;
endproperty

property q6;
  q1 and q5;
endproperty

`ifdef NEGATIVE_TEST
a5: assert property (q6);
  // illegal: no leading clocking event
a6: assert property ($fell(c) |=> q6);
  // illegal: no leading clocking event
`endif

sequence s2;
  $rose(a) ##[1:5] b;
endsequence

`ifdef NEGATIVE_TEST
c1: cover property (s2);
  // illegal: no leading clocking event
`endif
c2: cover property (@(negedge clk) s2);
  // legal: explicit leading clocking event, '@(negedge clk)'

sequence s3;
  @(negedge clk) s2;
endsequence

c3: cover property (s3);
  // legal: leading clocking event, '@(negedge clk)',
  // determined from declaration of 's3'
`ifdef NEGATIVE_TEST
c4: cover property (s3 ##1 b);
  // illegal: no default, inferred, or explicit leading
  // clocking event and maximal property is not an instance
`endif
endmodule
