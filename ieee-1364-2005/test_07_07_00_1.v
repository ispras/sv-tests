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
//   7. Gate- and switch-level modeling
//     7.7 CMOS switches
//       The equivalence of the cmos gate to the pairing of an nmos gate and a pmos gate is shown
//       in the following example

module test;
  input datain, ncontrol, pcontrol;
  output w;
  cmos  (w, datain, ncontrol, pcontrol);
  // is equvalent to
  nmos (w, datain, ncontrol);
  pmos (w, datain, pcontrol);
endmodule
