/*
 * Copyright 2024 ISP RAS (http://www.ispras.ru)
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
//       14.3.1 Specifying transition delays on module paths

module test(C, Q);

  input C;
  output Q;

  specify
    // six expressions specify transitions to/from 0, 1, and z
    specparam t01 = 12, t10 = 16, t0z = 13,
     tz1 = 10, t1z = 14, tz0 = 34;
    (C => Q) = (t01, t10, t0z, tz1, t1z, tz0);
    specparam T01 = 12:14:24, T10 = 16:18:20, T0z = 13:16:30;
    specparam Tz1 = 10:12:16, T1z = 14:23:36, Tz0 = 15:19:34;
    (C => Q) = ( 01, T10, T0z, Tz1, T1z, Tz0);
  endspecify
endmodule
