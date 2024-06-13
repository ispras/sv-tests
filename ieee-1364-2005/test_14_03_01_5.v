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
    // twelve expressions specify all transition delays explicitly
    specparam  t01=10, t10=12, t0z=14, tz1=15, t1z=29, tz0=36,
               t0x=14, tx1=15, t1x=15, tx0=14, txz=20, tzx=30;
    (C => Q) = (t01, t10, t0z, tz1, t1z, tz0,
                t0x, tx1, t1x, tx0, txz, tzx);
  endspecify
endmodule
