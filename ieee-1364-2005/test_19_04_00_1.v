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
//       Example 1 — The example below shows a simple usage of an `ifdef directive for conditional
//       compilation. If the identifier  behavioral is defined, a continuous net assignment will be
//       compiled in; otherwise, an and gate will be instantiated.

// ! TYPE: POSITIVE

module and_op(a, b, c);

  output a;
  input b, c;

  `ifdef behavioral
    wire a = b & c;
  `else
    and a1(a, b, c);
  `endif
endmodule
