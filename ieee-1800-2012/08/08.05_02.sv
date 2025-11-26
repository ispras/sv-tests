// IEEE Std 1800-2012
//   8. Classes
//    8.5 Object properties and object parameter data

// ! TYPE: VARYING

module top;

  class vector #(parameter width = 7, type T = int);
  endclass

  vector #(3) v = new;
  initial $display (vector #(3)::T'(3.45)); // Typecasting
`ifdef NEGATIVE_TEST
  initial $display ((v.T)'(3.45)); // ILLEGAL
`endif
  initial $display (v.width);

endmodule
