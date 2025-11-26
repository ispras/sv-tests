// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.9 Loading memory data from a file
//         The following example returns a nonzero value when EOF has previously been detected
//         reading the input file fd. It returns zero otherwise.

// ! TYPE: POSITIVE

module test;

  reg [7:0] mem[1:256];

   initial $readmemh("mem.data", mem);
   initial $readmemh("mem.data", mem, 16);
   initial $readmemh("mem.data", mem, 128, 1);
endmodule
