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
//   3. Lexical conventions
//    3.5 Numbers
//      3.5.1 Integer constants
//        Example 3 - Using sign with constant numbers
module test;
`ifdef NEGATIVE_TEST
  parameter p00 = 8 'd -6;  // this is illegal syntax
`endif

  parameter p01 = -8 'd 6;  // this defines the two's complement of 6,
                            // held in 8 bits-equivalent to -(8'd 6)
  parameter p02 = 4 'shf;   // this denotes the 4-bit number '1111', to
                            // be interpreted as a 2's complement number,
                            // or '-1'. This is equivalent to -4'h 1
  parameter p03 = -4 'sd15; // this is equivalent to -(-4'd 1), or '0001'
  parameter p04 = 16'sb?;   // the same as 16'sbz
endmodule
