// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.17 Programmable logic array modeling system tasks
//     20.17.4 Logic array personality formats

// ! TYPE: POSITIVE

module top;
  `define rows 4
  `define cols 3
  logic [1:`cols] a, mem[1:`rows];
  logic [1:`rows] b;
  initial begin
    // PLA system call
    $async$and$plane(mem, a[1:3], b[1:4]);
    mem[1] = 3'b10?;
    mem[2] = 3'b??1;
    mem[3] = 3'b0?0;
    mem[4] = 3'b???;
    // stimulus and display
    #10 a = 3'b111;
    #10 $displayb(a, " -> ", b);
    #10 a = 3'b000;
    #10 $displayb(a, " -> ", b);
    #10 a = 3'bxxx;
    #10 $displayb(a, " -> ", b);
    #10 a = 3'b101;
    #10 $displayb(a, " -> ", b);
  end
endmodule
