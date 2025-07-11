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

// ! TYPE: POSITIVE

module test;

  `define wordsize 8
  reg [1:`wordsize] data;

  //define a nand with variable delay
  `define var_nand(dly) nand #dly
  `var_nand(2) g121(q21, n10, n11);
  `var_nand(5) g122(q22, n10, n11);

endmodule
