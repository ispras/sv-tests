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
//       17.2.5 File positioning
//         Example 1 - returns in  pos the offset from the beginning of the file of the current
//         byte of the file fd, which shall be read or written by a subsequent operation on that
//         file descriptor.

// ! TYPE: POSITIVE

module test;

  integer fd;
  integer pos;

  initial begin
    pos = $ftell(fd);
  end
endmodule
