// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.3 Timescale system tasks
//       17.3.1 $printtimescale
//         In this example, module a_dat invokes the $printtimescale system task to display
//         timescale information about another module c_dat, which is instantiated in module b_dat.

// ! TYPE: POSITIVE

`timescale 1 ms / 1 us

module a_dat;
  initial
    $printtimescale(b_dat.c1);
endmodule

`timescale 10 fs / 1 fs

module b_dat;
  c_dat c1();
endmodule

`timescale 1 ns / 1 ns

module c_dat;
   // ...
endmodule
