// IEEE Std 1800-2012
//   6. Data types
//    6.20 Constants
//     6.20.5 Specify parameters

// ! TYPE: VARYING

module top (output [7:0] DOUT,
            input [7:0] DIN,
            input [5:0] ADR,
            input WE, CE);
  specparam dhold = 1.0;
  specparam ddly = 1.0;
  parameter width = 1;
`ifdef NEGATIVE_TEST
  parameter regsize = dhold + 1.0; // Illegal - cannot assign
                                   // specparams to parameters
`endif
endmodule
