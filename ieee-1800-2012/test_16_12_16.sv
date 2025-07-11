/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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
//   16. Assertions
//    16.12 Declaring properties
//     16.12.16 Case

// ! TYPE: VARYING

module test;

reg a, b;

property p_delay(logic [1:0] delay);
  case (delay)
    2'd0 : a && b;
    2'd1 : a ##2 b;
    2'd2 : a ##4 b;
    2'd3 : a ##8 b;
`ifdef NEGATIVE_TEST
    default: 0; // cause a failure if delay has x or z values
`endif
  endcase
endproperty

endmodule
