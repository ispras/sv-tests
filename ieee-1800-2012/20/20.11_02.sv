// IEEE Std 1800-2012
//   20. Utility system tasks and system functions
//    20.11 Elaboration system tasks

// ! TYPE: POSITIVE

module top(input clk, trig, [3:0] vect);

  generate
    if ($bits(vect) == 1) begin : err $error("Only a 1-bit vector"); end
    for (genvar i = 0; i < $bits(vect); i++) begin : Loop
      if (i == 0) begin : Cond
        sequence t; vect[0]; endsequence
        $info("i = 0 branch generated");
      end : Cond
      else begin : Cond
        sequence t; vect[i] ##1 Loop[i - 1].Cond.t; endsequence
        $info("i = %0d branch generated", i);
      end : Cond
    end : Loop
  endgenerate

  // instantiate the last generated sequence in a property
  property p;
    @(posedge clk) trig |-> Loop[$bits(vect) - 1].Cond.t;
  endproperty

endmodule
