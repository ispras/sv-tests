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
//     18.4 Format of extended VCD file
//       18.4.2 Extended VCD node information

// ! TYPE: POSITIVE

module testbench;
  test_device DUT();
endmodule

module test_device(count_out, carry, data, reset);

  output count_out, carry;
  input [0:3] data;
  input reset;

  initial begin
    $dumpports(testbench.DUT, "testoutput.vcd");
    //  ...
  end
endmodule
