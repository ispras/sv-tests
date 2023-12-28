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
//       14.2.7 Module path polarity
//         14.2.7.2 Positive polarity

module test;
  input In1, s;
  output q1, q2;

  specify
    specparam In_to_q = 100, s_to_q = 100;
    // Positive polarity
    (In1 +=> q) = In_to_q;
    (s   +*> q) = s_to_q;
  endspecify
endmodule
