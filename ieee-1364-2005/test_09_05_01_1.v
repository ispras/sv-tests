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
//       9.5.1 Case statement with do-not-cares
//         The following is an example of the casez statement. It demonstrates an instruction
//         decode, where values of the most significant bits select which task should be called.
//         If the most significant bit of ir is a 1, then the task instruction1 is called,
//         regardless of the values of the other bits of ir.

module test;
  reg [7:0] ir;

  task instruction1;
  input [7:0] ir;
  begin
    ir = 1;
  end
  endtask

  task instruction2;
  input [7:0] ir;
  begin
    ir = 2;
  end
  endtask

  task instruction3;
  input [7:0] ir;
  begin
    ir = 3;
  end
  endtask

  task instruction4;
  input [7:0] ir;
  begin
    ir = 4;
  end
  endtask

  initial begin
    casez (ir)
      8'b1???????: instruction1(ir);
      8'b01??????: instruction2(ir);
      8'b00010???: instruction3(ir);
      8'b000001??: instruction4(ir);
    endcase
  end
endmodule
