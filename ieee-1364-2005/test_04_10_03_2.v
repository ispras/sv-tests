// IEEE Std 1364-2005
//   4. Data types
//    4.10 Parameters
//      4.10.3 Specify parameters
//        Example 2

// ! TYPE: VARYING

module RAM16GEN(DOUT, DIN, ADR, WE, CE);

  output [7:0] DOUT;
  input [7:0] DIN;
  input [5:0] ADR;
  input WE, CE;

  specparam dhold = 1.0;
  specparam ddly = 1.0;
  parameter width = 1;

`ifdef NEGATIVE_TEST
  parameter regsize = dhold + 1.0; // Illegal - cannot assign
                                   // specparams to parameters
`endif
endmodule
