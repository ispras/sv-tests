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
//       14.2.3 Edge-sensitive paths
//         The following example demonstrates an edge-sensitive path declaration with a positive
//         polarity operator. In this example, at the positive edge of clock, a module path extends
//         from clock to out using a rise delay of 10 and a fall delay of 8. The data path is from
//         in to out, and in is not inverted as it propagates to out.

module test(clock, in, out);
  inout clock, in, out;
  specify
    ( posedge  clock => ( out +: in ) ) = (10, 8);
  endspecify
endmodule
