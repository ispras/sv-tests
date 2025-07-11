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
//           Because no pulse style or showcancelled declarations appear within the specify block,
//           the compiler applies the default modes of on-event and noshowcancelled.

// ! TYPE: POSITIVE

module test(a, b, out);

  input a, b;
  output out;

  specify
    (a => out) = (2,3);
    (b => out) = (3,4);
  endspecify
endmodule
