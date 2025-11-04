/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   5. Lexical conventions
//    5.7 Numbers
//     5.7.2 Real literal constants

// ! TYPE: VARYING

module top;
  real val1 = 1.2;
  real val2 = 0.1;
  real val3 = 2394.26331;
  real val4 = 1.2E12; // the exponent symbol can be e or E
  real val5 = 1.30e-2;
  real val6 = 0.1e-0;
  real val7 = 23E10;
  real val8 = 29E-2;
  real val9 = 236.123_763_e-12; // underscores are ignored

`ifdef NEGATIVE_TEST
  real invalid1 = .12;
  real invalid2 = 9.;
  real invalid3 = 4.E3;
  real invalid4 = .2e-7;
`endif
endmodule