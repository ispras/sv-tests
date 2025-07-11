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
//     16.12.6 Implication

// ! TYPE: POSITIVE

`define data_end_exp (data_phase && ((irdy==0)&&($fell(trdy)||$fell(stop))))

module test(mclk, irdy, trdy);

input mclk, irdy, trdy;
reg frame, stop, data_phase;

property data_end_rule1;
  @(posedge mclk)
  `data_end_exp |-> ##[1:2] $rose(frame) ##1 $rose(irdy);
endproperty

property data_end_rule2;
  @(posedge mclk) ##[1:2] $rose(frame) ##1 $rose(irdy);
endproperty

endmodule
