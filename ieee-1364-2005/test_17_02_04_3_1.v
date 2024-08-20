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
//         17.2.4.3 Reading formatted data
//           $fscanf reads from the files specified by the file descriptor fd. $sscanf reads from
//           the reg str. Both functions read characters, interpret them according to a format, and
//           store the results. Both expect as arguments a control string, format, and a set of
//           arguments specifying where to place the results. If there are insufficient arguments
//           for the format, the behavior is undefined. If the format is exhausted while arguments
//           remain, the excess arguments are ignored.

module test;

  integer code, fd;
  reg str, arg1, arg2, arg3;
  reg [32:0] format;

  initial begin
    code = $fscanf(fd, format, arg1, arg2, arg3);
    code = $sscanf(str, format, arg1, arg2, arg3);
  end
endmodule
