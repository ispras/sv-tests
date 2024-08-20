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
//   10. Tasks and functions
//     10.3 Disabling of named blocks and tasks
//       This example shows the disable statement being used within a named block in a manner
//       similar to a forward goto. The next statement executed after the disable statement is
//       the one following the named block.

module test;

  reg a, rega, regb;

  initial
    begin : block_name
      rega = regb;
      if (a == 0)
        disable block_name;
    end // end of named block
    // continue with code following named block

endmodule
