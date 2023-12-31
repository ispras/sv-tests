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
//       14.3.1 Specifying transition delays on module paths

module test;
  input C;
  output Q;

  specify
    // one expression specifies all transitions
    (C => Q) = 20;
    (C => Q) = 10:14:20;
    // two expressions specify rise and fall delays
    specparam  tPLH01 = 12, tPHL01 = 25;
    specparam  tPLH02 = 12:16:22, tPHL02 = 16:22:25;
    (C => Q) = ( tPLH01, tPHL01 ) ;
    (C => Q) = ( tPLH02, tPHL02 ) ;
    // three expressions specify rise, fall, and z transition delays
    specparam  tPLH1 = 12, tPHL11 = 22, tPz11 = 34;
    specparam  tPLH12 = 12:14:30, tPHL12 = 16:22:40, tPz12 = 22:30:34;
    (C => Q) = (tPLH11, tPHL11, tPz11);
    (C => Q) = (tPLH12, tPHL12, tPz12);
    // six expressions specify transitions to/from 0, 1, and z
    specparam  t001 = 12, t010 = 16, t00z = 13,
     t0z1 = 10, t01z = 14, t0z0 = 34 ;
    (C => Q) = ( t001, t010, t00z, t0z1, t01z, t0z0) ;
    specparam   T01 = 12:14:24, T10 = 16:18:20, T0z = 13:16:30;
    specparam   Tz1 = 10:12:16, T1z = 14:23:36, Tz0 = 15:19:34;
    (C => Q) = ( T01, T10, T0z, Tz1, T1z, Tz0);
    // twelve expressions specify all transition delays explicitly
    specparam  t01=10, t10=12, t0z=14, tz1=15, t1z=29, tz0=36,
               t0x=14, tx1=15, t1x=15, tx0=14, txz=20, tzx=30;
    (C => Q) = (t01, t10, t0z, tz1, t1z, tz0,
                t0x, tx1, t1x, tx0, txz, tzx);
  endspecify
endmodule
