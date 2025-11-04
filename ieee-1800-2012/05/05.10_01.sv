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
//    5.10 Structure literals

// ! TYPE: POSITIVE

module top;
  typedef struct {int a; shortreal b;} ab;
  ab c;
  ab d;
  ab abarr[1:0];

  struct {int X, Y, Z;} XYZ;
  typedef struct {int a, b[4];} ab_t;
  int a = 10, b = 20, c_val = 30;
  ab_t v1[1:0][2:0];

  initial begin
    c = '{0, 0.0};

    abarr[1:0] = '{'{1, 1.0}, '{2, 2.0}};

    c = '{a:5, b:3.14};
    c = '{default:0};
    d = ab'{int:1, shortreal:1.0};

    XYZ = '{3{1}};
    v1 = '{2{'{3{'{a, '{2{b, c_val}}}}}}};
  end
endmodule