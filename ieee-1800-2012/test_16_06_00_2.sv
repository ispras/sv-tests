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

reg [2:0] count;
reg clk;
reg a;
realtime t;

initial count = 0;

always @(posedge clk) begin
  if (count == 0) t = 0; //capture t in a procedural context
  count = count + 1;
end

property p1;
  disable iff (a)
  @(posedge clk) count == 7 |-> t < 50.5;
endproperty

property p2;
  realtime l_t;
  @(posedge clk)
  (count == 0, l_t = 0) ##1 (count == 7)[->1] |->
  t - l_t < 50.5;
endproperty

endmodule
