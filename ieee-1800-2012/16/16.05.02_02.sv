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
//    16.5 Concurrent assertions overview
//     16.5.2 Assertion clock

// ! TYPE: POSITIVE

module top (input clk, rst, in1, in2);

property cont_prop (logic rst, logic in1, logic in2);
  @(posedge clk) disable iff (rst)
    (in1 != in2);
endproperty

base_rule1: assert property (cont_prop(rst,in1,in2)) $display("%m, passing");
            else $display("%m, failed");

endmodule
