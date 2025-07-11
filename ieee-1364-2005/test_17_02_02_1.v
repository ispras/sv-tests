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
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.2 File output system tasks

// ! TYPE: POSITIVE

module test(clock);

  input clock;
  integer messages, broadcast, cpu_chann, alu_chann, mem_chann;
  reg address, acc, f, a, b;

  initial begin

    cpu_chann = $fopen("cpu.dat");

    if (cpu_chann == 0)
      $finish;

    alu_chann = $fopen("alu.dat");

    if (alu_chann == 0)
      $finish;

    mem_chann = $fopen("mem.dat");

    if (mem_chann == 0)
      $finish;

    messages = cpu_chann | alu_chann | mem_chann;

    // broadcast includes standard output
    broadcast = 1 | messages;

    // The following file output tasks show how the channels opened in the preceding example
    // might be used:
    $fdisplay(broadcast, "system reset at time %d", $time);
    $fdisplay(messages, "Error occurred on address bus at time %d, address = %h", $time, address);
    forever @(posedge clock)
      $fdisplay(alu_chann, "acc= %h f=%h a=%h b=%h", acc, f, a, b);
  end
endmodule
