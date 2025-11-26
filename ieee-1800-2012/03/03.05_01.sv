// IEEE Std 1800-2012
//   3. Design and verification building blocks
//    3.5 Interfaces

// ! TYPE: POSITIVE

interface simple_bus(input logic clk); // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
endinterface: simple_bus

module memMod(simple_bus a); // 'simple_bus' interface port
  logic avail = 0;
  always @(posedge a.clk) avail <= 1;
  // When 'memMod' is instantiated in module 'top', 'a.req' is the 'req'
  // signal in the 'sb_intf' instance of the 'simple_bus' interface
  always @(posedge a.clk) a.gnt <= a.req & avail;
endmodule

module cpuMod(simple_bus b); // 'simple_bus' interface port
  // ...
endmodule

module top;
  logic clk = 0;

  simple_bus sb_intf(.clk(clk)); // Instantiate the interface

  memMod mem(.a(sb_intf)); // Connect interface to module instance
  cpuMod cpu(.b(sb_intf)); // Connect interface to module instance
endmodule
