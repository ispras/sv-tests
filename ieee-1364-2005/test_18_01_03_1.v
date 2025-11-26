// IEEE Std 1364-2005
//   18. Value change dump (VCD) files
//     18.1 Creating four-state VCD file
//       18.1.3 Stopping and resuming the dump ($dumpoff/$dumpon)
//         This example starts the VCD after 10 time units, stops it 200 time units later (at
//         time 210), restarts it again 800 time units later (at time 1010), and stops it 900 time
//         units later (at time 1910).

// ! TYPE: POSITIVE

module test;
  initial begin
    # 10  $dumpvars (1, test);
    # 200 $dumpoff;
    # 800 $dumpon;
    # 900 $dumpoff;
  end
endmodule
