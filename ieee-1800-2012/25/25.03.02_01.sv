// IEEE Std 1800-2012
//   25. Interfaces
//    25.3 Interface syntax
//     25.3.2 Interface example using a named bundle

// ! TYPE: POSITIVE

interface simple_bus; // Define the interface
  logic req, gnt;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;
endinterface: simple_bus

module memMod(simple_bus a, // Access the 'simple_bus' interface
              input logic clk);
  logic avail;
  // When 'memMod' is instantiated in module 'top', 'a.req' is the req
  // signal in the 'sb_intf' instance of the 'simple_bus' interface
  always_comb a.gnt = a.req & avail;
endmodule

module cpuMod(simple_bus b, input logic clk);
  // ...
endmodule

module top;

  logic clk = 0;

  simple_bus sb_intf(); // Instantiate the interface
  memMod mem(sb_intf, clk); // Connect the interface to the module instance
  cpuMod cpu(.b(sb_intf), .clk(clk)); // Either by position or by name

endmodule
