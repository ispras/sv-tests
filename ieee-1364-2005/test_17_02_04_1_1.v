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
//     17.2 File input-output system tasks and functions
//       17.2.4 Reading data from a file
//         17.2.4.1 Reading a character at a time
//           Example 1 - reads a byte from the file specified by  fd. If an error occurs reading
//           from the file, then c is set to EOF(-1). The code defines the width of the reg to
//           be wider than 8 bits so that a return value from $fgetc of EOF(-1) can be
//           differentiated from the character code  0xFF. Applications can call $ferror to
//           determine the cause of the most recent error (see 17.2.7).

module test;
  integer fd, c;

  initial begin

    fd = $fopen ("file.txt");
    c = $fgetc (fd);
  end
endmodule
