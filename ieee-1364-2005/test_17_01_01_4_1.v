// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.1 Display system tasks
//       17.1.1 The display and write tasks
//         17.1.1.4 Unknown and high-impedance values

// ! TYPE: POSITIVE

module test;

  initial begin
    $display("%d", 1'bx);
    $display("%h", 14'bx01010);
    $display("%h %o", 12'b001xxx101x01, 12'b001xxx101x01);
  end
endmodule
