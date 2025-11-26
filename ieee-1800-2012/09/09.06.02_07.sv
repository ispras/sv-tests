// IEEE Std 1800-2012
//   9. Processes
//    9.6 Process control
//     9.6.2 Disable statement

// ! TYPE: POSITIVE

module top;

  event retrig;
  reg q;

  always begin : monostable
    #250 q = 0;
  end

  always @retrig begin
    disable monostable;
    q = 1;
  end

endmodule
