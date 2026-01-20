// IEEE Std 1800-2012
//   25. Interfaces
//    25.7 Tasks and functions in interfaces
//     25.7.1 Example of using tasks in interface

// ! TYPE: POSITIVE

interface simple_bus; // Define the interface
  logic req, gnt, clk;
  logic [7:0] addr, data;
  logic [1:0] mode;
  logic start, rdy;

  task masterRead(input logic [7:0] raddr); // 'masterRead' method
    // ...
  endtask: masterRead

  task slaveRead; // 'slaveRead' method
    // ...
  endtask: slaveRead

endinterface: simple_bus

module memMod(simple_bus a); // Uses any interface
  logic avail;

  always_comb // the 'clk' signal from the interface
    a.gnt = a.req & avail; // the 'gnt' and 'req' signals in the interface

  always @(a.start)
    a.slaveRead;
endmodule

module cpuMod(simple_bus b);
  enum {read, write} instr;
  logic [7:0] raddr;

  always @*
    if (instr == read)
      b.masterRead(raddr); // call the Interface method
    else
      b.masterWrite(raddr);
endmodule

module top;
  logic clk = 0;

  simple_bus sb_intf(clk); // Instantiate the interface

  memMod mem(sb_intf);
  cpuMod cpu(sb_intf);
endmodule
