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
//       17.3.1 $printtimescale
//         In this example, module a_dat invokes the $printtimescale system task to display
//         timescale information about another module c_dat, which is instantiated in module b_dat.

`timescale 1 ms / 1 us

module a_dat;
  initial
    $printtimescale (b_dat.c1);
endmodule

`timescale 10 fs / 1 fs

module b_dat;
  c_dat c1();
endmodule

`timescale 1 ns / 1 ns

module c_dat;
   // ...
endmodule