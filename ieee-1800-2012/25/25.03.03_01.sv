// IEEE Std 1800-2012
//   25. Interfaces
//    25.3 Interface syntax
//     25.3.3 Interface example using a generic bundle

// ! TYPE: POSITIVE

// 'memMod' and 'cpuMod' can use any interface
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
  simple_bus sb_intf(); // Instantiate the interface

  // Reference the 'sb_intf' instance of the 'simple_bus'
  // interface from the generic interfaces of the
  // 'memMod' and 'cpuMod' modules
  memMod mem(.a(sb_intf), .clk(clk));
  cpuMod cpu(.b(sb_intf), .clk(clk));

endmodule
