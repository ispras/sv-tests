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
//   12. Procedural programming statements
//    12.6 Pattern matching conditional statements
//     12.6.2 Pattern matching in if statements

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    union tagged {
      struct { logic [3:0] cc; logic [31:0] addr; } JmpC;
    } Jmp;
  } Instr;

  Instr e;

  logic [31:0] a, addr_out;
  logic [3:0] c, cc_out, rf;

  initial begin
    if (e matches (tagged Jmp (tagged JmpC '{cc:.c, addr:.a})) &&& (rf[c] != 0)) begin
      cc_out = c;
      addr_out = a;
    end
    else begin
      cc_out = 4'b0;
      addr_out = 32'b0;
    end
  end

endmodule
