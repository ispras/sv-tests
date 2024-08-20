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
//       18.1.3 Stopping and resuming the dump ($dumpoff/$dumpon)
//         This example starts the VCD after 10 time units, stops it 200 time units later (at
//         time 210), restarts it again 800 time units later (at time 1010), and stops it 900 time
//         units later (at time 1910).

module test;
  initial begin
    # 10  $dumpvars (1, test);
    # 200 $dumpoff;
    # 800 $dumpon;
    # 900 $dumpoff;
  end
endmodule
