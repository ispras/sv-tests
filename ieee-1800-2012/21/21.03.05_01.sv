// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.5 File positioning

// ! TYPE: POSITIVE

module top;

  integer pos, code, offset, operation, fd;

  initial begin
    pos = $ftell(fd);
    code = $fseek(fd, offset, operation);
    code = $rewind(fd);
  end

endmodule
