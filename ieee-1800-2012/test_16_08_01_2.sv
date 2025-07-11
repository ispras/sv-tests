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
//    16.8 Declaring sequences
//     16.8.1 Typed formal arguments in sequence declarations

// ! TYPE: POSITIVE

module test(clk);

reg x, y, z;
input clk;

global clocking sys @(posedge clk); endclocking

sequence delay_arg_example (max, shortint delay1, delay2, min);
  x ##delay1 y[*min:max] ##delay2 z;
endsequence

parameter my_delay=2;

cover property (@$global_clock delay_arg_example(4, my_delay, my_delay - 1, 3));

// The cover property above is equivalent to the following:
// cover property (x ##2 y[*3:$] ##1 z);

endmodule
