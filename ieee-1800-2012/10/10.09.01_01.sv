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
//   10. Assignment statements
//    10.9 Assignment patterns
//     10.9.1 Array assignment patterns

// ! TYPE: POSITIVE

module top;

  parameter y = 1;

  bit unpackedbits [1:0] = '{1,1}; // no size warning required as 'bit' can be set to 1
  int unpackedints [1:0] = '{1'b1, 1'b1}; // no size warning required as 'int' can be set to 1'b1

  initial unpackedbits = '{2 {y}} ; // same as '{y, y}
  int n[1:2][1:3] = '{2{'{3{y}}}}; // same as '{'{y,y,y},'{y,y,y}}

  initial unpackedints = '{default:2}; // sets elements to 2

  struct {int a; time b;} abkey[1:0];
  initial abkey = '{'{a:1, b:2ns}, '{int:5, time:$time}};

endmodule
