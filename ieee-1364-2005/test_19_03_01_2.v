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
//     19.3 `define and `undef
//       19.3.1 `define
//         The following is illegal syntax because it is split across a string.

// ! TYPE: VARYING

module test;

`ifdef NEGATIVE_TEST
  `define first_half "start of string
  $display (`first_half end of string");
`endif

endmodule
