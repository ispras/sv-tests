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
//    16.14 Concurrent assertions
//     16.14.7 Inferred value functions

// ! TYPE: POSITIVE

module top(logic a, b, c, d, rst1, clk1, clk2);

logic rst;
reg q;

default clocking @(negedge clk1); endclocking
default disable iff rst1;

property p_triggers(start_event, end_event, form, clk = $inferred_clock,
                    rst = $inferred_disable);
  @clk disable iff (rst)
    (start_event ##0 end_event[->1]) |=> form;
endproperty

property p_multiclock(clkw, clkx = $inferred_clock, clky, w, x, y, z);
  @clkw w ##1 @clkx x |=> @clky y ##1 z;
endproperty

a1: assert property (p_triggers(a, b, c));
a2: assert property (p_triggers(a, b, c, posedge clk1, 1'b0) );

always @(posedge clk2 or posedge rst) begin
  if (rst) q = 0;
  else begin
    a3: assert property (p_triggers(a, b, c));
  end
end

a4: assert property(p_multiclock(negedge clk2, , posedge clk1,
                                 a, b, c, d) );
endmodule
