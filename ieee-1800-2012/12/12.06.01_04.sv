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
//     12.6.1 Pattern matching in case statements

// ! TYPE: POSITIVE

module top;

  typedef union tagged {
    struct {
      bit [4:0] reg1, reg2, regd;
    } Add;

    union tagged {
      bit [9:0] JmpU;
      struct {
        bit [1:0] cc;
        bit [9:0] addr;
      } JmpC;
    } Jmp;
  } Instr;

  Instr instr;
  bit [9:0] pc, rf;

  initial begin
    case (instr) matches
    tagged Add .s: case (s) matches
                  '{.*, .*, 0} : ; // no op
                  '{.r1, .r2, .rd} : rf[rd] = rf[r1] + rf[r2];
                endcase
    tagged Jmp .j: case (j) matches
                     tagged JmpU .a : pc = pc + a;
                     tagged JmpC '{.c, .a} : if (rf[c]) pc = a;
                   endcase
    endcase
  end

endmodule
