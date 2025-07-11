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
//   19. Compiler directives
//     19.4 `ifdef, `else, `elsif, `endif, `ifndef
//       Example 3 — The following example shows usage of chained nested conditional compilation
//       directives.

// ! TYPE: POSITIVE

module test;
  `ifdef first_block
    `ifndef second_nest
      initial $display("first_block is defined");
    `else
      initial $display("first_block and second_nest defined");
    `endif
  `elsif second_block
    initial $display("second_block defined, first_block is not");
  `else
    `ifndef last_result
      initial $display("first_block, second_block, last_result not defined.");
    `elsif real_last
      initial $display("first_block, second_block not defined, last_result and real_last defined.");
    `else
      initial $display("Only last_result defined!");
    `endif
  `endif
endmodule
