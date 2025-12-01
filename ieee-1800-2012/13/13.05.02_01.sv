// IEEE Std 1800-2012
//   13. Tasks and functions (subroutines)
//    13.5 Subroutine calls and argument passing
//     13.5.2 Pass by reference

// ! TYPE: POSITIVE

module top;

  function automatic int crc(ref byte packet [1000:1]);
    for(int j = 1; j <= 1000; j++) begin
      crc ^= packet[j];
    end
  endfunction

  byte packet1[1000:1];
  int k = crc(packet1); // pass by value or by reference: call is the same

endmodule
