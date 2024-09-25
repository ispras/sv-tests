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
//    16.14 Concurrent assertions
//     16.14.1 Assert statement

module test(input clk, rst, in1, in2);

global clocking sys @(posedge clk); endclocking

property abc(a, b, c);
  disable iff (a==2) @(posedge clk) not (b ##1 c);
endproperty

env_prop: assert property (@$global_clock abc(rst, in1, in2))
    $display("env_prop passed."); else $display("env_prop failed.");

endmodule
