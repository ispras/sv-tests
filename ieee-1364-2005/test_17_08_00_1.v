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
//     17.8 Conversion functions
//       The following example shows how the $realtobits and $bitstoreal functions are used
//       in port connections.

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