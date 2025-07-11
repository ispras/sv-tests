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
//     12.3 Ports
//       12.3.7 Real numbers in port connections
//         The real data type shall not be directly connected to a port. It shall be connected
//         indirectly, as shown in the following example. The system functions $realtobits and
//         $bitstoreal shall be used for passing the bit patterns across module ports. (See 17.8 for
//         a description of these system tasks.)

// ! TYPE: POSITIVE

module driver(net_r);

  output net_r;
  real r;
  wire [64:1] net_r = $realtobits(r);
endmodule

module receiver(net_r);
  input net_r;
  wire [64:1] net_r;
  real r;
  initial assign r = $bitstoreal(net_r);
endmodule
