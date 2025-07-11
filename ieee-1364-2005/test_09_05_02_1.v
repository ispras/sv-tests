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
//   9. Behavioral modeling
//     9.5 Case statement
//       9.5.2 Constant expression in case statement
//         The following example demonstrates the usage by modeling a 3-bit priority encoder. In
//         this example, the case expression is a constant expression (1). The case items are
//         expressions (bit-selects) and are compared against the constant expression for a match.

// ! TYPE: POSITIVE

module test;

  reg [2:0] encode;

  initial begin
    case(1)
      encode[2] : $display("Select Line 2") ;
      encode[1] : $display("Select Line 1") ;
      encode[0] : $display("Select Line 0") ;
      default $display("Error: One of the bits expected ON");
    endcase
  end
endmodule
