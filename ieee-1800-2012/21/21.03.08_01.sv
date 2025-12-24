// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.8 Detecting EOF

// ! TYPE: POSITIVE

module top;

  integer code, fd;

  initial begin
    code = $feof(fd);
  end

endmodule
