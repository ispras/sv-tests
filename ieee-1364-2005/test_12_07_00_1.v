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
//     12.7 Scope rules
//       The following example shows how variables can be accessed directly or with hierarchical
//       names.

module test;

  task t;
    reg s;
    begin : b
      reg r;
      t.b.r = 0; // These three lines access the same variable r
      b.r = 0;
      r = 0;
      t.s = 0; // These two lines access the same variable s
      s = 0;
    end
  endtask
endmodule
