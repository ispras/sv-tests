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
//     12.1 Modules
//       12.1.2 Module instantiation
//         The following example illustrates a circuit (the lower level module) being driven by
//         a simple waveform description (the higher level module) where the circuit module is
//         instantiated inside the waveform module.

// Lower level module:
// module description of a nand flip-flop circuit

// ! TYPE: POSITIVE

module ffnand(q, qbar, preset, clear);

  // declares 2 circuit output nets
  output q, qbar;

  // declares 2 circuit input nets
  input preset, clear;

  // declaration of two nand gates and their interconnections
  nand g1(q, qbar, preset),
       g2(qbar, q, clear);
endmodule

// Higher level module:
// a waveform description for the nand flip-flop
module ffnand_wave;

  wire out1, out2; // outputs from the circuit
  reg in1, in2;    // variables to drive the circuit
  parameter d = 10;

  // instantiate the circuit ffnand, name it "ff",
  // and specify the IO port interconnections
  ffnand ff(out1, out2, in1, in2);

  // define the waveform to stimulate the circuit
  initial begin
    #d in1 = 0; in2 = 1;
    #d in1 = 1;
    #d in2 = 0;
    #d in2 = 1;
  end
endmodule
