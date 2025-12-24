// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.7 I/O error status

// ! TYPE: POSITIVE

module top;

  integer errno, str, fd;

  initial begin
    errno = $ferror(fd, str);
  end

endmodule
