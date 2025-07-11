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
//     12.5 Hierarchical names
//       The next example shows how a pair of named blocks can refer to items declared within each
//       other.

// ! TYPE: POSITIVE

module test;

  initial begin
    fork : mod_1
      reg x;
      mod_2.x = 1;
    join
    fork : mod_2
      reg x;
      mod_1.x = 0;
    join
  end
endmodule
