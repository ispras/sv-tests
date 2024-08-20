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
//     19.11 `begin_keywords, `end_keywords
//       The next example is the same code as the previous example, except that it explicitly
//       specifies that the IEEE Std 1364-2005 Verilog keywords should be used. This example shall
//       result in an error because uwire is reserved as a keyword in this standard.

`begin_keywords "1364-2005" // use IEEE Std 1364-2005 Verilog keywords
module m2;

`ifdef NEGATIVE_TEST
  wire [63:0] uwire; // ERROR: "uwire" is a keyword in 1364-2005
`endif
  // ...
endmodule
`end_keywords
