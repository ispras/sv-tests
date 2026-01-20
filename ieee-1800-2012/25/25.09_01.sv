// IEEE Std 1800-2012
//   25. Interfaces
//    25.9 Virtual interfaces

// ! TYPE: POSITIVE

interface SBus; // A Simple bus interface
  logic req, grant;
  logic [7:0] addr, data;
endinterface

class SBusTransactor; // 'SBus' transactor class
  virtual SBus bus; // virtual interface of type 'SBus'

  function new(virtual SBus s);
    bus = s; // initialize the virtual interface
  endfunction

  task request(); // request the 'bus'
    bus.req <= 1'b1;
  endtask

  task wait_for_bus();
    @(posedge bus.grant);
  endtask
endclass // wait for the 'bus' to be granted

module devA(SBus s); // devices that use 'SBus'
  SBusTransactor t = new(s);
endmodule

module devB(SBus s);
  SBusTransactor t = new(s);
endmodule

module dut;
  SBus s[1:4] (); // instantiate 4 interfaces

  devA a1(s[1]); // instantiate 4 devices
  devB b1(s[2]);
  devA a2(s[3]);
  devB b2(s[4]);

  initial begin
    SBusTransactor t[1:4]; // create 4 bus-transactors and bind
    t[1] = new(s[1]);
    t[2] = new(s[2]);
    t[3] = new(s[3]);
    t[4] = new(s[4]);
  end
endmodule

module top;
  dut u_dut();
endmodule
