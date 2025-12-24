// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.6 Flushing output

// ! TYPE: POSITIVE

module top;

  integer mcd, fd;

  initial begin
    $fflush(mcd);
    $fflush(fd);
    $fflush();
  end

endmodule
