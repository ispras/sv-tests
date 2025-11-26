// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top;

  reg rega, regb, regc;

  initial begin : block_name
    rega = regb;
    disable block_name;
    regc = rega; // this assignment will never execute
  end

endmodule
