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
//   9. Behavioral modeling
//     9.3 Procedural continuous assignments
//       9.3.2 The force and release procedural statements
//         The right-hand side of a procedural continuous assignment or a force statement can be
//         an expression. This shall be treated just as a continuous assignment; that is, if any
//         variable on the right-hand side of the assignment changes, the assignment shall be
//         reevaluated while the assign or force is in effect. Here, if b changes or c changes,
//         a will be forced to the new value of the expression b + 10*c.

module test;

  reg a, b, c;

  initial begin
    a = 1;
    b = 0;
    c = 1;
    force a = b + 10 * c;
  end
endmodule
