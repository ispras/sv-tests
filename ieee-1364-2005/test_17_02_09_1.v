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
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.9 Loading memory data from a file
//         The following example returns a nonzero value when EOF has previously been detected
//         reading the input file fd. It returns zero otherwise.

// ! TYPE: POSITIVE

module test;

  reg [7:0] mem[1:256];

   initial $readmemh("mem.data", mem);
   initial $readmemh("mem.data", mem, 16);
   initial $readmemh("mem.data", mem, 128, 1);
endmodule
