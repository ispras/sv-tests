/*
 * Copyright 2025 ISP RAS (http://www.ispras.ru)
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
//   5. Lexical conventions
//    5.12 Attributes

// ! TYPE: POSITIVE

(* optimize_power *)
module mod1 (
    input logic clk,
    input logic [3:0] in,
    output logic [3:0] out
);
    always_ff @(posedge clk) begin
        out <= in + 1;
    end
endmodule

module top(clk, in, out);
  input clk;
  input logic [3:0] in;
  output logic [3:0] out;

  (* optimize_power=0 *)
  mod1 synth1 (
    .clk(clk),
    .in(in),
    .out(out)
  );
endmodule
