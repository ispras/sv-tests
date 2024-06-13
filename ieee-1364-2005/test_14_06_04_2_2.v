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
//     14.6 Detailed control of pulse filtering behavior
//       14.6.4 Detailed pulse control capabilities
//         14.6.4.2 Negative pulse detection
//           This showcancelled declaration is in error because it follows use of out in a module
//           path declaration. It would be contradictory for out to have noshowcancelled behavior
//           from input a, but showcancelled behavior from input b.

module test(a, b, out);
  input a, b;
  output out;

  specify
    (a=>out)=(2,3);
    `ifdef NEGATIVE_TEST
    showcancelled out;
    (b =>out)=(3,4);
    `endif
  endspecify
endmodule
