/*
 * Copyright 2018-2024 ISP RAS (http://www.ispras.ru)
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
//       12.3.3 Port declarations
//         If a port declaration does not include a net or variable type, then the port can be again
//         declared in a net or variable declaration. If the net or variable is declared as a
//         vector, the range specification between the two declarations of a port shall be
//         identical. Once a name is used in a port declaration, it shall not be declared again in
//         another port declaration or in a data type declaration.

module test(aport);

  input aport; // First declaration - okay.
  `ifdef NEGATIVE_TEST
  input aport; // Error - multiple declaration, port declaration
  output aport; // Error - multiple declaration, port declaration
  `endif

endmodule
