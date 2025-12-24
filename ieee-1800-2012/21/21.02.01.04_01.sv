// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.2 Display system tasks
//     21.2.1 The display and write tasks
//      21.2.1.4 Unknown and high-impedance values

// ! TYPE: POSITIVE

module top;

  initial begin
    $display("%d", 1'bx); // result: 'x'
    $display("%h", 14'bx01010); // result: 'xxXa'
    $display("%h %o", 12'b001xxx101x01, 12'b001xxx101x01); // result: 'XXX 1x5X'
  end

endmodule
