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
//     16.9.4 Global clocking past and future sampled value functions

module test;

reg rst, sig, clk;

a1: assert property (@clk $changing_gclk(sig) |-> $falling_gclk(clk))
  else $display("sig is not stable");

a2: assume property(@clk
  $falling_gclk(clk) ##1 (!$falling_gclk(clk)[*1:$]) |-> $steady_gclk(sig));

a3: assert property (@clk disable iff (rst) $changing_gclk(sig) |-> $falling_gclk(clk))
  else $display("sig is not stable");

// A ##1 is needed in a4 due to the corner case at cycle 0
a4: assert property (##1 $stable_gclk(sig));

// In a5, there is no issue at cycle 0
a5: assert property ($steady_gclk(sig));

endmodule
