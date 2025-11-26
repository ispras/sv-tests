// IEEE Std 1800-2012
//   16. Assertions
//    16.12 Declaring properties
//     16.12.6 Implication

// ! TYPE: POSITIVE

`define data_end_exp (data_phase && ((irdy==0)&&($fell(trdy)||$fell(stop))))

module top(mclk, irdy, trdy);

input mclk, irdy, trdy;
reg frame, stop, data_phase;

property data_end_rule1;
  @(posedge mclk)
  `data_end_exp |-> ##[1:2] $rose(frame) ##1 $rose(irdy);
endproperty

property data_end_rule2;
  @(posedge mclk) ##[1:2] $rose(frame) ##1 $rose(irdy);
endproperty

endmodule
