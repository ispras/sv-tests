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
//         17.2.4.2 Reading a line at a time
//           The code below reads characters from the file specified by fd into the reg str until
//           str is filled, or a newline character is read and transferred to str, or an EOF
//           condition is encountered. If str is not an integral number of bytes in length, the most
//           significant partial byte is not used in order to determine the size.

module test;
  integer code, fd;
  reg str;

  initial begin
    code = $fgets ( str, fd );
  end
endmodule
