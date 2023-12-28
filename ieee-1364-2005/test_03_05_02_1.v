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
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.2 Real constants
module test;
  real x00 = 1.2;
  real x01 = 0.1;
  real x02 = 2394.26331;
  real x03 = 1.2E12;
  real x04 = 1.30e-2;
  real x05 = 0.1e-0;
  real x06 = 23E10;
  real x07 = 29E-2;
  real x08 = 236.123_763_e-12;

`ifdef NEGATIVE_TEST
  real x09 = .12;
  real x10 = 9.;
  real x11 = 4.E3;
  real x12 = .2e-7;
`endif
endmodule