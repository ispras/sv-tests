// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.1 Pass by value

// ! TYPE: POSITIVE

module top;

  function automatic int crc(byte packet [1000:1]);
    for(int j = 1; j <= 1000; j++) begin
      crc ^= packet[j];
    end
  endfunction

endmodule
