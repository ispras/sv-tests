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
//     14.3 Assigning delays to module paths
//       14.3.3 Delay selection
//         Example 1. For a Y transition from 0 to 1, if A transitioned more recently than B, a
//         delay of 6 will be chosen. But if B transitioned more recently than A, a delay of 5 will
//         be chosen. And if, the last time they transitioned, A and B did so simultaneously, then
//         the smallest of the two rise delays would be chosen, which is the rise delay from B of 5.
//         The fall delay from A of 9 would be chosen if Y was instead to transition from 1 to 0.

module test;
  input A, B;
  output Y;

  specify
    (A => Y) = (6, 9);
    (B => Y) = (5, 11);
  endspecify
endmodule
