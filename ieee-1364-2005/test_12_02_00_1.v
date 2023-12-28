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
//     12.2 Overriding module parameter values
//       A module parameter can have a type specification and a range specification. The effect of
//       parameter overrides on a parameter’s type and range shall be in accordance with the
//       following rules:
//       — A parameter declaration with no type or range specification shall default to the type and
//       range of the final override value assigned to the parameter.
//       — A parameter with a range specification, but with no type specification, shall be the
//       range of the parameter declaration and shall be unsigned. An override value shall be
//       converted to the type and range of the parameter.
//       — A parameter with a type specification, but with no range specification, shall be of the
//       type specified. An override value shall be converted to the type of the parameter. A signed
//       parameter shall default to the range of the final override value assigned to the parameter.
//       — A parameter with a signed type specification and with a range specification shall be
//       signed and shall be the range of its declaration. An override value shall be converted to
//       the type and range of the parameter.

module generic_fifo
  #( parameter MSB=3, LSB=0, DEPTH=4)
  //These parameters can be overridden
  ( input [MSB:LSB] in,
    input clk, read, write, reset,
    output [MSB:LSB] out,
    output full, empty );
  
   function integer LOG2;
    input [31:0] value;
    begin
      value = value - 1;
      for (LOG2 = 0; value > 0; LOG2 = LOG2 + 1)
        value = value >> 1;
      end
  endfunction

  localparam FIFO_MSB = DEPTH*MSB;
  localparam FIFO_LSB = LSB;
  // These parameters are local, and cannot be overridden.
  // They can be affected by altering the public parameters
  // above, and the module will work correctly.
  reg [FIFO_MSB:FIFO_LSB] fifo;
  reg [LOG2(DEPTH):0] depth;

  always @(posedge clk or reset) begin
    casex ({read,write,reset})
    // implementation of fifo (trivial here)
      default: depth = 0;
    endcase
  end
endmodule

