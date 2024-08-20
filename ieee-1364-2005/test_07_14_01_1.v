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
//     7.14.1 min:typ:max delays
//       The following example shows min:typ:max values for rising, falling, and turn-off delays.

module iobuf(io1, io2, dir);

  input io1, io2;
  output dir;
  bufif0 #(5:7:9, 8:10:12, 15:18:21) b1(io1, io2, dir);
  bufif1 #(6:8:10, 5:7:9, 13:17:19) b2(io2, io1, dir);
endmodule
