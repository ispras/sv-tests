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
//     17.3 Timescale system tasks
//       17.3.2 $timeformat
//         The following example shows the use of %t with the $timeformat system task to specify a
//         uniform time unit, time precision, and format for timing information.

// ! TYPE: POSITIVE

`timescale 1 ms / 1 ns

module cntrl;
  initial
    $timeformat(-9, 5, " ns", 10);
endmodule

`timescale 1 fs / 1 fs

module a1_dat;
  reg in1;
  integer file;
  buf #10000000 (o1, in1);

  initial begin
    file = $fopen ("a1.dat");
    #00000000 $fmonitor(file, "%m: %t in1=%d o1=%h", $realtime, in1, o1);
    #10000000 in1 = 0;
    #10000000 in1 = 1;
  end
endmodule

`timescale 1 ps / 1 ps

module a2_dat;
  reg in2;
  integer file2;
  buf #10000 (o2, in2);

  initial begin
    file2 = $fopen("a2.dat");
    #00000 $fmonitor (file2, "%m: %t in2=%d o2=%h", $realtime, in2, o2);
    #10000 in2 = 0;
    #10000 in2 = 1;
  end
endmodule
