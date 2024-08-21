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
//    16.9 Sequence operations
//     16.9.9 Conditions over sequences

module test(mclk, irdy, trdy);

input mclk, irdy, trdy;
reg burst_mode;

sequence burst_rule1;
  @(posedge mclk)
  $fell(burst_mode) ##0
  ((!burst_mode) throughout (##2 ((trdy == 0) && (irdy == 0)) [*7]));
endsequence

endmodule
