// IEEE Std 1800-2012
//   23. Modules and hierarchy
//    23.11 Binding auxiliary code to scopes or instances

// ! TYPE: POSITIVE

module top(input clk, enable, input int minval, expr);
endmodule

interface range(input clk, enable, input var int minval, expr);
  property crange_en;
    @(posedge clk) enable |-> (minval <= expr);
  endproperty
  range_chk: assert property (crange_en);
endinterface

bind top range r1(c_clk, c_en, v_low, (in1 && in2));
