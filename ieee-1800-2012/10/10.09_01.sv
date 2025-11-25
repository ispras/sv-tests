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

// ! TYPE: POSITIVE

module top;

  parameter int N = 10;
  parameter real PI = 3.1416;

  var int A[N] = '{default:1};
  var integer i = '{31:1, 23:1, 15:1, 8:1, default:0};

  typedef struct {real r, th;} C;
  var C x = '{th:PI/2.0, r:1.0};
  var real y [0:1] = '{0.0, 1.1}, z [0:9] = '{default: 3.1416};

  var int a, b, c, d;
  var int B[4] = '{a, b, c, d};
  var C k = '{1.0, PI/2.0};

  initial '{a, b, c, d} = B;

  typedef logic [1:0] [3:0] T;
  shortint result = shortint'({T'{1,2}, T'{3,4}}); // yields 16'sh1234

  typedef byte U[3];
  var U D = '{1, 2, 3};
  var byte e, f, g;

  initial begin
    U'{e, f, g} = D;
    U'{g, e, f} = '{e+1, f+1, g+1};
  end

endmodule
