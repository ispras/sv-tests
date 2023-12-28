/*
 * Copyright 2018 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1364-2005
//   14. Specify blocks
//     14.1 Specify block declaration
//       The first two lines following the keyword specify declare specify parameters, which are
//       discussed in 4.10.3. The line following the declarations of specify parameters describes a
//       module path and assigns delays to that module path. The specify parameters determine the
//       delay assigned to the module path. Specifying module paths is presented in 14.2. Assigning
//       delays to module paths is discussed in 14.3. The line preceding the keyword endspecify
//       instantiates one of the system timing checks, which are discussed further in Clause 15.

module test;
  inout clk, q, d;
  specify
    specparam tRise_clk_q = 150, tFall_clk_q = 200;
    specparam tSetup = 70;
    (clk => q) = (tRise_clk_q, tFall_clk_q);
    $setup (d, posedge clk, tSetup);
  endspecify
endmodule
