// IEEE Std 1800-2012
//   25. Interfaces
//    25.3 Interface syntax
//     25.3.3 Interface example using a generic bundle

// ! TYPE: POSITIVE

module memMod(interface a, input logic clk);
  // ...
endmodule

module cpuMod(interface b, input logic clk);
  // ...
endmodule

interface simple_bus; // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
endinterface: simple_bus

module top;

  logic clk = 0;

  simple_bus sb_intf();

  memMod mem(.*, .a(sb_intf)); // partial implicit port connections
  cpuMod cpu(.*, .b(sb_intf)); // partial implicit port connections

endmodule
