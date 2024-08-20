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
//     7.4 bufif1, bufif0, notif1, and notif0 gates
//       The following example declares an instance of bufif1. The output is outw, the input is inw,
//       and the control is controlw. The instance name is bf1.

module test(inw, controlw, outw);

  input inw, controlw;
  output outw;
  bufif1 bf1(outw, inw, controlw);
endmodule
