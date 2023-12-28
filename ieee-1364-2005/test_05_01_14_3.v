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
//   5. Expressions
//    5.1 Operators
//      5.1.14 Concatenations
//        Example 3
module test;
  parameter P = 32;

  reg [31:0] a;
  wire [31:0] b;
  wire [31:0] c;

  // The following is legal for all P from 1 to 32
  assign b[31:0] = { {32-P{1'b1}}, a[P-1:0] } ;

`ifdef NEGATIVE_TEST
  // The following is illegal for P=32 because the zero
  // replication appears alone within a concatenation
  assign c[31:0] = { {{32-P{1'b1}}}, a[P-1:0] }

  // The following is illegal for P=32
  initial
    $displayb({32-P{1'b1}}, a[P-1:0]);
`endif
endmodule
