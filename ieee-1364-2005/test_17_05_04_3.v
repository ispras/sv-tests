// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.5 Programmable logic array (PLA) modeling system tasks
//       17.5.4 Logic array personality formats
//         Example 2 — An example of the usage of the plane format tasks follows. The logical
//         function of this PLA is shown first, followed by the PLA personality in the new format,
//         the Verilog HDL description using the $async$and$plane system task, and finally the
//         result of running the simulation.

// ! TYPE: POSITIVE

module pla;

  `define rows 4
  `define cols 3

  reg [1:`cols] a, mem[1:`rows];
  reg [1:`rows] b;

  initial begin
    // PLA system call
    $async$and$plane(mem, a[1:3], b[1:4]);
    mem[1] = 3'b10?;
    mem[2] = 3'b??1;
    mem[3] = 3'b0?0;
    mem[4] = 3'b???;
    // stimulus and display
    #10 a = 3'b111;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'b000;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'bxxx;
    #10  $displayb(a, " -> ", b);
    #10 a = 3'b101;
    #10  $displayb(a, " -> ", b);
  end
endmodule
