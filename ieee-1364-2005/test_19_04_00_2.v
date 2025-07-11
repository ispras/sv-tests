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
//       Example 2 — The following example shows usage of nested conditional compilation directive.

// ! TYPE: POSITIVE

module test(out);

  output out;

  `define wow
  `define nest_one
  `define second_nest
  `define nest_two

  `ifdef wow
    initial $display("wow is defined");
    `ifdef nest_one
      initial $display("nest_one is defined");
      `ifdef nest_two
        initial $display("nest_two is defined");
      `else
        initial $display("nest_two is not defined");
      `endif
    `else
      initial $display("nest_one is not defined");
    `endif
  `else
    initial $display("wow is not defined");
    `ifdef second_nest
      initial $display("second_nest is defined");
    `else
      initial $display("second_nest is not defined");
    `endif
  `endif
endmodule
