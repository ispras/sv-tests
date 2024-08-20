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
//     7.14 7.14 Gate and net delays
//       The following is an example of a delay specification with one, two, and three delays

module test(in1, in2, in, ctrl, out);

  input in1, in2, in, ctrl;
  output out;

  and #(10) a1(out, in1, in2);          // only one delay
  and #(10,12) a2(out, in1, in2);       // rise and fall delays
  bufif0 #(10,12,11) b3(out, in, ctrl); // rise, fall, and turn-off delays
endmodule
