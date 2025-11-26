// IEEE Std 1800-2012
//   16. Assertions
//    16.5 Concurrent assertions overview
//     16.5.2 Assertion clock

// ! TYPE: POSITIVE

module top (input clk, rst, in1, in2);

property cont_prop (logic rst, logic in1, logic in2);
  @(posedge clk) disable iff (rst)
    (in1 != in2);
endproperty

base_rule1: assert property (cont_prop(rst,in1,in2)) $display("%m, passing");
            else $display("%m, failed");

endmodule
