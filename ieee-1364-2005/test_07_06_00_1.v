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
//     7.6 Bidirectional pass switches
//       The following example declares an instance of tranif1. The bidirectional terminals are
//       inout1 and inout2. The control input is control. The instance name is t1.

// ! TYPE: POSITIVE

module test(control, inout1, inout2);

  input control;
  inout inout1, inout2;
  tranif1 t1(inout1,inout2,control);
endmodule
