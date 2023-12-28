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
//       The following example specifies a `begin_keywords "1364-2001" directive. The source code
//       within the module uses the identifier uwire as a net name. The `begin_keywords directive
//       would be necessary in this example if an implementation uses IEEE Std 1364-2005 as its
//       default set of keywords because uwire is a reserved keyword in this standard. Specifying
//       that the "1364-1995" Verilog keyword lists should be used would also work with this
//       example.

`begin_keywords "1364-2001" // use IEEE Std 1364-2001 Verilog keywords
module m2;
  wire [63:0] uwire; // OK: "uwire" is not a keyword in 1364-2001
 // ...
endmodule
`end_keywords
