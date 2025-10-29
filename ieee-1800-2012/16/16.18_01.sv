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
//    16.18 Clocking blocks and concurrent assertions

// ! TYPE: POSITIVE

module top;

logic a, clk;

clocking cb_with_input @(posedge clk);
  input a;
  property p1;
    a;
  endproperty
endclocking

clocking cb_without_input @(posedge clk);
  property p1;
    a;
  endproperty
endclocking

property p1;
  @(posedge clk) a;
endproperty

property p2;
  @(posedge clk) cb_with_input.a;
endproperty

a1: assert property (p1);
a2: assert property (cb_with_input.p1);
a3: assert property (p2);
a4: assert property (cb_without_input.p1);

endmodule
