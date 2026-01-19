// IEEE Std 1800-2012
//   25. Interfaces
//    25.3 Interface syntax
//     25.3.2 Interface example using a named bundle

// ! TYPE: POSITIVE

interface simple_bus;
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
endinterface: simple_bus

module memMod(simple_bus sb_intf, input logic clk);
  // ...
endmodule

module cpuMod(simple_bus sb_intf, input logic clk);
  // ...
endmodule

module top;

  logic clk = 0;

  simple_bus sb_intf();

  memMod mem(.*); // implicit port connections
  cpuMod cpu(.*); // implicit port connections

endmodule
