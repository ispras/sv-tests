// IEEE Std 1800-2012
//   9. Processes
//    9.3 Block statements
//     9.3.3 Statement block start and finish times

// ! TYPE: POSITIVE

module top;

  logic [7:0] r;

  initial
    fork
      #200 r = 'hF7;
      #150 r = 'h00;
      #100 r = 'hE2;
      #50 r = 'h35;
    join

endmodule
