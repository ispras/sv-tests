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
//   7. Gate- and switch-level modeling
//     7.14 Gate and net delays
//       The following example specifies a simple latch module with three-state outputs, where
//       individual delays are given to the gates. The propagation delay from the primary inputs
//       to the outputs of the module will be cumulative, and it depends on the signal path through
//       the network.

// ! TYPE: POSITIVE

module tri_latch(qout, nqout, clock, data, enable);

  output qout, nqout;
  input clock, data, enable;
  tri qout, nqout;

  not #5 n1(ndata, data);
  nand #(3,5) n2(wa, data, clock), n3(wb, ndata, clock);
  nand #(12,15) n4(q, nq, wa), n5(nq, q, wb);
  bufif1 #(3,7,13) q_drive(qout, q, enable),
  nq_drive(nqout, nq, enable);
endmodule
