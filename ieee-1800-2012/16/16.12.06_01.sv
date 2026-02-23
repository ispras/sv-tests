// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.6 Implication

// ! TYPE: POSITIVE

module top(mclk, irdy, trdy);

  input mclk, irdy, trdy;
  reg data_phase, stop;

  property data_end;
    @(posedge mclk)
    $rose(data_phase) |-> ##[1:5] ((irdy == 0) && ($fell(trdy) || $fell(stop)));
  endproperty

endmodule
