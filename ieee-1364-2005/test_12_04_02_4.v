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
//   12. Hierarchical structures
//     12.4 Generate constructs
//       12.4.2 Conditional generate constructs
//         A module of memory dimm.

// ! TYPE: POSITIVE


module sms_08b216t0(clk, csb, cke, ba, addr, rasb, casb, web, ldqm, udqm, dqi, dev_id);
  input [10:0] addr;
  input        clk, csb, cke, ba, rasb, casb, web, ldqm;
  input [ 7:0] udqm;
  input [15:0] dqi;
  input [ 4:0] dev_id;

  task read_mem;
    input  [31:0] address;
    output [15:0] data;
    begin
    end
  endtask

endmodule

module sms_16b208t0(clk, csb, cke, ba, addr, rasb, casb, web, dqm, dqi, dev_id);
  input [10:0] addr;
  input        clk, csb, cke, ba, rasb, casb, web;
  input [ 7:0] dqm;
  input [ 7:0] dqi;
  input [ 4:0] dev_id;

  task read_mem;
    input [31:0] address;
    output [7:0] data;
    begin
    end
  endtask

endmodule

module dimm(addr, ba, rasx, casx, csx, wex, cke, clk, dqm, data, dev_id);

  parameter [31:0] MEM_WIDTH = 16, MEM_SIZE = 8; // in mbytes
  input [10:0] addr;
  input        ba, rasx, casx, csx, wex, cke, clk;
  input [ 7:0] dqm;
  inout [63:0] data;
  input [ 4:0] dev_id;

  genvar       i;

  case ({MEM_SIZE, MEM_WIDTH})
    {32'd8, 32'd16}: // 8Meg x 16 bits wide
    begin : memory
      for (i = 0; i < 4; i = i + 1) begin : word
        sms_08b216t0 p(.clk(clk), .csb(csx), .cke(cke),.ba(ba),
                       .addr(addr), .rasb(rasx), .casb(casx),
                       .web(wex), .udqm(dqm[2*i+1]), .ldqm(dqm[2*i]),
                       .dqi(data[15+16*i:16*i]), .dev_id(dev_id));
      // The hierarchical instance names are memory.word[3].p,
      // memory.word[2].p, memory.word[1].p, memory.word[0].p,
      // and the task memory.read_mem
      end

      task read_mem;
        input [31:0] address;
        output [63:0] data;

        begin // call read_mem in sms module
          word[3].p.read_mem(address, data[63:48]);
          word[2].p.read_mem(address, data[47:32]);
          word[1].p.read_mem(address, data[31:16]);
          word[0].p.read_mem(address, data[15: 0]);
        end
      endtask
    end
    {32'd16, 32'd8}: // 16Meg x 8 bits wide
    begin : memory
      for (i = 0; i < 8; i = i + 1) begin : byte_
        sms_16b208t0 p(.clk(clk), .csb(csx), .cke(cke),.ba(ba),
                       .addr(addr), .rasb(rasx), .casb(casx),
                       .web(wex), .dqm(dqm[i]),
                       .dqi(data[7+8*i:8*i]), .dev_id(dev_id));
      // The hierarchical instance names are memory.byte[7].p,
      // memory.byte[6].p, ... , memory.byte[1].p, memory.byte[0].p,
      // and the task memory.read_mem
      end
      task read_mem;
        input [31:0] address;
        output [63:0] data;
        begin // call read_mem in sms module
          byte_[7].p.read_mem(address, data[63:56]);
          byte_[6].p.read_mem(address, data[55:48]);
          byte_[5].p.read_mem(address, data[47:40]);
          byte_[4].p.read_mem(address, data[39:32]);
          byte_[3].p.read_mem(address, data[31:24]);
          byte_[2].p.read_mem(address, data[23:16]);
          byte_[1].p.read_mem(address, data[15: 8]);
          byte_[0].p.read_mem(address, data[ 7: 0]);
        end
      endtask
    end
    // Other memory cases ...
  endcase
endmodule
