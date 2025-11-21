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
//    12.5 Case statement
//     12.5.4 Set membership case statement

// ! TYPE: POSITIVE

module top(input clock);

  task task1;
  endtask

  task task2;
  endtask

  logic [2:0] status;

  always @(posedge clock)
    priority case (status) inside
      1, 3 : task1; // matches 'b001 and 'b011
      3'b0?0, [4:7]: task2; // matches 'b000 'b010 'b0x0 'b0z0 'b100 'b101 'b110 'b111
    endcase // 'priority case' fails all other values including 'b00x 'b01x 'bxxx

endmodule
