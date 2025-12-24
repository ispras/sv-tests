// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.4 Reading data from a file
//      21.3.4.3 Reading formatted data

// ! TYPE: POSITIVE

module top;

  integer code;
  string str, format, args;
  int fd;

  initial begin
    code = $fscanf(fd, format, args);
    code = $sscanf(str, format, args);
  end

endmodule
