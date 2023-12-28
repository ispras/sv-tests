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
//   15. Timing checks
//     15.4 Edge-control specifiers
//       The posedge and negedge keywords can be used as a shorthand for certain edge-control
//       specifiers.

module test;
  input clr, data;

  specify
    // For example, the construct
    $nochange(posedge clr, data, 0, 0);

    // is equivalent to the following
    $nochange(edge [01, 0x, x1] clr, data, 0, 0);

    // Similarly, the construct
    $nochange(negedge clr, data, 0, 0);

    // is the same as the following
    $nochange(edge [10, x0, 1x] clr, data, 0, 0);
  endspecify
endmodule
