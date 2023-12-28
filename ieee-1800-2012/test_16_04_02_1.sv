/*
 * Copyright 2019 ISP RAS (http://www.ispras.ru)
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

// IEEE Std 1800-2012
//   16. Assertions
//    16.3 Deferred assertions
//     16.4.2 Deferred assertion flush points

module test;

wire not_a;
reg a, my_cond;
integer opcode;

assign not_a = !a;

always begin : b1
  a1: assert (not_a != a);
  a2: assert #0 (not_a != a); // Should pass once values have settled
end

function integer error_type (input integer opcode);
  begin
    func_assert: assert (opcode < 64) else $display("Opcode error.");
    if (opcode < 32)
      error_type = 0;
    else
      error_type = 1;
  end
endfunction

always begin : b2
  a1: assert #0 (my_cond) else
    $display("Error on operation of type %d\n", error_type(opcode));
  a2: assert #0 (my_cond) else
    error_type(opcode);
end

endmodule
