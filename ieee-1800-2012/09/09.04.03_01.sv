// IEEE Std 1800-2012
//   9. Processes
//    9.4 Procedural timing controls
//     9.4.3 Level-sensitive event control

// ! TYPE: POSITIVE

module top;

  reg a, b, c, d, enable;

  initial begin
    wait (!enable) #10 a = b;
    #10 c = d;
  end

endmodule
