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
//     12.4 Generate constructs
//       12.4.3 External names for unnamed generate blocks
//         Each generate construct in a given scope is assigned a number. The number will be 1 for
//         the construct that appears textually first in that scope and will increase by 1 for each
//         subsequent generate construct in that scope. All unnamed generate blocks will be given
//         the name “genblk<n>” where <n> is the number assigned to its enclosing generate
//         construct. If such a name would conflict with an explicitly declared name, then
//         leading zeroes are added in front of the number until the name does not conflict.

module top;
  parameter genblk2 = 0;
  genvar i;

  // The following generate block is implicitly named genblk1

  if (genblk2) reg a; // top.genblk1.a
  else         reg b; // top.genblk1.b

  // The following generate block is implicitly named genblk02
  // as genblk2 is already a declared identifier

  if (genblk2) reg a; // top.genblk02.a
  else         reg b; // top.genblk02.b

  // The following generate block would have been named genblk3
  // but is explicitly named g1
  for (i = 0; i < 1; i = i + 1) begin : g1
    // block name
    // The following generate block is implicitly named genblk1
    // as the first nested scope inside of g1
    if (1) reg a; // top.g1[0].genblk1.a
  end

  // The following generate block is implicitly named genblk4 since
  // it belongs to the fourth generate construct in scope "top".
  // The previous generate block would have been
  // named genblk3 if it had not been explicitly named g1
  for (i = 0; i < 1; i = i + 1)
    // The following generate block is implicitly named genblk1
    // as the first nested generate block in genblk4
    if (1) reg a; // top.genblk4[0].genblk1.a
    // The following generate block is implicitly named genblk5
    if (1) reg a; // top.genblk5.a
endmodule
