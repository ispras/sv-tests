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
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         Generate with a case to handle widths less than 3.

module adder_1bit(co, sum, a, b, ci);
  input co, sum, a, b, ci;
endmodule

module adder_2bit(co, sum, a, b, ci);
  input co, sum, a, b, ci;
endmodule

module adder_cla(co, sum, a, b, ci);
  input co, sum, a, b, ci;
endmodule

module test;
  parameter WIDTH = 0;
  reg co, sum, a, b, ci;
  generate
    case (WIDTH)
      1: begin : adder        // 1-bit adder implementation
        adder_1bit x1(co, sum, a, b, ci);
      end
      2: begin : adder        // 2-bit adder implementation
        adder_2bit x1(co, sum, a, b, ci);
      end
      default : begin : adder // others - carry look-ahead adder
        adder_cla #(WIDTH) x1(co, sum, a, b, ci);
      end
    endcase
    // The hierarchical instance name is adder.x1
  endgenerate

endmodule
