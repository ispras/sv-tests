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
//  7. Aggregate data types
//   7.3 Unions

// ! TYPE: POSITIVE

module top;

  typedef union { int i; shortreal f; } num; // named 'union' type
  num n;
  initial begin
    n.f = 0.0; // set 'n' in floating point format
  end

  typedef struct {
    bit isfloat;
    union { int i; shortreal f; } n; // anonymous 'union' type
  } tagged_st; // named structure

endmodule
