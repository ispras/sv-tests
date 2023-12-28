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
//   12. Hierarchical structures
//     12.3 Ports
//       12.3.3 Port declarations
//         As an example, the module named test given in the previous example could alternatively be
//         declared as follows.

module test (
  input [7:0] a,
  input signed [7:0] b, c, d, // Multiple ports that share all
                              // attributes can be declared together.

  output [7:0] e,             // Every attribute of the declaration
                              // must be in the one declaration.

  output reg signed [7:0] f, g,
  output signed [7:0] h) ;
  // It is illegal to redeclare any ports of
  // the module in the body of the module.
endmodule
