// IEEE Std 1800-2012
//   14. Clocking blocks
//    14.9 Interfaces and clocking blocks

// ! TYPE: POSITIVE

interface bus_A (input clk);
  logic [15:0] data;
  logic write;
  modport test (input data, output write);
  modport dut (output data, input write);
endinterface

interface bus_B (input clk);
  logic [8:1] cmd;
  logic enable;
  modport test (input enable);
  modport dut (output enable);
endinterface

program test(bus_A a, bus_B b);
  clocking cd1 @(posedge a.clk);
    input data = a.data;
    output write = a.write;
    inout state = top.cpu.state;
  endclocking

  clocking cd2 @(posedge b.clk);
    input #2 output #4ps cmd = b.cmd;
    input en = b.enable;
  endclocking

  initial begin
    // program begins here
    // user can access 'cd1.data', 'cd1.write', 'cd1.state',
    // 'cd2.cmd' and 'cd2.en'
  end
endprogram

module mem(bus_B b);
endmodule

module cpu(bus_A a);
  logic state;
endmodule

module top;
  logic phi1, phi2;

  bus_A a (phi1);
  bus_B b (phi2);

  test main (a, b);
  cpu cpu (a);
  mem mem (b);
endmodule
