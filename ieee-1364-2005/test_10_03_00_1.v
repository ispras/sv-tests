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
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       This example illustrates how a block disables itself.

module test;

  reg rega, regb, regc;

  initial
    begin : block_name
      rega = regb;
      disable block_name;
      regc = rega; // this assignment will never execute
    end
endmodule
