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
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.6 Reading dump file during simulation ($dumpflush)
//         Example 2 — The following is a simple source description example to produce a VCD file:
//         In this example, the name of the dump file is verilog.dump. It dumps value changes for
//         all variables in the model. Dumping begins when an event do_dump occurs. The dumping
//         continues for 500 clock cycles and then stops and waits for the event do_dump to be
//         triggered again. At every 10000 time steps, the current values of all VCD variables
//         are dumped.

module dump(clock);
  input clock;
  event do_dump;

  initial $dumpfile ("verilog.dump");
  initial @do_dump
    $dumpvars;                       // dump variables in the design
    always @do_dump                  // to begin the dump at event do_dump
    begin
      $dumpon;                       // no effect the first time through
      repeat (500) @(posedge clock); // dump for 500 cycles
      $dumpoff;                      // stop the dump
    end
    initial @(do_dump)
      forever #10000 $dumpall;       // checkpoint all variables
endmodule
