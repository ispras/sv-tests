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
    // two expressions specify rise and fall delays
    specparam  tPLH1 = 12, tPHL1 = 25;
    specparam  tPLH2 = 12:16:22, tPHL2 = 16:22:25;
    (C => Q) = ( tPLH1, tPHL1 ) ;
    (C => Q) = ( tPLH2, tPHL2 ) ;
  endspecify
endmodule