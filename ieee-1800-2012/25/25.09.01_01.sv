// IEEE Std 1800-2012
//   25. Interfaces
//    25.9 Virtual interfaces
//     25.9.1 Virtual interfaces and clocking blocks

// ! TYPE: POSITIVE

interface SyncBus(input logic clk);
  wire a, b, c;

  clocking sb @(posedge clk);
    input a;
    output b;
    inout c;
  endclocking
endinterface

typedef virtual SyncBus VI; // A virtual interface type

task do_it(VI v); // handles any 'SyncBus' via 'clocking sb'
  if (v.sb.a == 1)
    v.sb.b <= 0;
  else
    v.sb.c <= ##1 1;
endtask

module top;
  logic clk;

  SyncBus b1(clk);
  SyncBus b2(clk);

  initial begin
    VI v[2] = '{b1, b2};
    repeat (20)
      do_it(v[$urandom_range(0, 1)]);
  end
endmodule
