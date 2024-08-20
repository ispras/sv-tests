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
//     17.11 Math functions
//       17.11.1 Integer math functions
//         The system function $clog2 shall return the ceiling of the log base 2 of the argument
//         (the log rounded up to an integer value). The argument can be an integer or an arbitrary
//         sized vector value. The argument shall be treated as an unsigned value, and an argument
//         value of 0 shall produce a result of 0.

module test;
  integer n, result;

  initial begin
    result = $clog2(n);
  end
endmodule
