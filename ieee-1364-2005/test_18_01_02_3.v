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
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.2 Specifying variables to be dumped ($dumpvars)
//         Example 3 - This example shows how the $dumpvars task can specify both modules and
//         individual variables. This call shall dump all variables in module mod1 and in all module
//         instances below mod1, along with variable net1 in module mod2. The argument 0 applies
//         only to the module instance top.mod1 and not to the individual variable top.mod2.net1.

module mod1_type;
  initial begin
  end
endmodule

module mod2_type;

  reg net1;

  initial begin
    net1 = 0;
  end
endmodule

module top;

  mod1_type mod1();
  mod2_type mod2();
  initial begin
    $dumpvars(0, top.mod1, top.mod2.net1);
  end
endmodule
