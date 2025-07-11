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
//       14.2.2 Simple module paths
//         The following three examples illustrate valid simple module path declarations.

// ! TYPE: POSITIVE

module test(A, B, C, D, Q);

  inout A, B, C, D, Q;

  specify
    (A => Q) = 10;
    (B => Q) = (12);
    (C, D *> Q) = 18;
  endspecify
endmodule
