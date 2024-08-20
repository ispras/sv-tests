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
//   12. Hierarchical structures
//     12.6 Upwards name referencing
//       In this example, there are four modules, a, b, c, and d. Each module contains an integer i.
//       The highest level modules in this segment of a model hierarchy are a and d. There are two
//       copies of module b because module a and d instantiate b. There are four copies of c.i
//       because each of the two copies of b instantiates c twice.

module a;

  integer i;
  b a_b1();
endmodule

module b;

  integer i;
  c b_c1(), b_c2();

  initial           // downward path references two copies of i:
    #10 b_c1.i = 2; // a.a_b1.b_c1.i, d.d_b1.b_c1.i
endmodule

module c;

  integer i;
  initial begin     // local name references four copies of i:
    i = 1;          // a.a_b1.b_c1.i, a.a_b1.b_c2.i,
                    // d.d_b1.b_c1.i, d.d_b1.b_c2.i
    b.i = 1;        // upward path references two copies of i:
                    // a.a_b1.i, d.d_b1.i
  end
endmodule

module d;

  integer i;
  b d_b1();

  initial begin // full path name references each copy of i
    a.i = 1;
    d.i = 5;
    a.a_b1.i = 2;
    d.d_b1.i = 6;
    a.a_b1.b_c1.i = 3;
    d.d_b1.b_c1.i = 7;
    a.a_b1.b_c2.i = 4;
    d.d_b1.b_c2.i = 8;
  end
endmodule
