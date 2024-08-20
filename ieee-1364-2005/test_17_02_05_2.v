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
//         Example 2 — sets the position of the next input or output operation on the file
//         specified by fd. The new position is at the signed distance offset bytes from the
//         beginning, from the current position, or from the end of the file, according to an
//         operation value of 0, 1, and 2 as follows:
//          — 0 sets position equal to offset bytes;
//          — 1 sets position to current location plus offset;
//          — 2 sets position to EOF plus offset.

module test(operation);

  input operation;
  integer fd, offset, code;

  initial begin
    code = $fseek(fd, offset, operation);
    code = $rewind(fd);
  end
endmodule
