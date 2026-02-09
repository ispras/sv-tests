// IEEE Std 1800-2012
//   28. Gate-level and switch-level modeling
//    28.16 Gate and net delays
//     28.16.1 min:typ:max delays

// ! TYPE: POSITIVE

module top;
  parameter min_hi = 97, typ_hi = 100, max_hi = 107;
  logic clk;

  always begin
    #(95:100:105) clk = 1;
    #(min_hi:typ_hi:max_hi) clk = 0;
  end
endmodule