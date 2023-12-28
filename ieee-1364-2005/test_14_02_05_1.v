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
//   14. Specify blocks
//     14.2 Module path declarations
//       14.2.5 Full connection and parallel connection paths
//         Example 2—The following example shows module paths for a 2:1 multiplexor with two 8-bit
//         inputs and one 8-bit output. The module path from s to q uses a full connection (*>)
//         because it connects a scalar source—the 1-bit select line—to a vector destination—the
//         8-bit output bus. The module paths from both input lines in1 and in2 to q use a parallel
//         connection (=>) because they set up parallel connections between two 8-bit buses.

module mux8 (in1, in2, s, q);
  output [7:0] q;
  input [7:0] in1, in2;
  input s;

  // Functional description omitted ...

  specify
    (in1 => q) = (3, 4) ;
    (in2 => q) = (2, 3) ;
    (s *> q) = 1;
  endspecify
endmodule
