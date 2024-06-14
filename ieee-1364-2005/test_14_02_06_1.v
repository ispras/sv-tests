/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//       14.2.6 Declaring multiple module paths in a single statement
//

module test(a, b, c, q1, q2);
  input a, b, c;
  output q1, q2;

  specify
    (a, b, c *> q1, q2) = 10;
    // is equivalent to the following six individual module path assignments:
    (a *> q1) = 10;
    (b *> q1) = 10;
    (c *> q1) = 10;
    (a *> q2) = 10;
    (b *> q2) = 10;
    (c *> q2) = 10;
  endspecify
endmodule
