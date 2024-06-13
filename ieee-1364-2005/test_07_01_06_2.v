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
//     7.1 Gate and switch declaration syntax
//       7.1.6 Primitive instance connection list
//         The two module descriptions that follow are equivalent except for indexed instance names,
//         and they demonstrate the range specification and connection rules for declaring an array
//         of instances

module driver (in, out, en);
  input [3:0] in;
  output [3:0] out;
  input en;
  bufif0 ar[3:0] (out, in, en); // array of three-state buffers
endmodule

module driver_equiv (in, out, en);
  input [3:0] in;
  output [3:0] out;
  input en;
  bufif0 ar3 (out[3], in[3], en); // each buffer declared separately
  bufif0 ar2 (out[2], in[2], en);
  bufif0 ar1 (out[1], in[1], en);
  bufif0 ar0 (out[0], in[0], en);
endmodule
