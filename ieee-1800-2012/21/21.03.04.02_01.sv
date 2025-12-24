// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.4 Reading data from a file
//      21.3.4.2 Reading a line at a time

// ! TYPE: POSITIVE

module top(input int fd);

  integer code;
  string str;

  initial begin
    code = $fgets(str, fd);
  end

endmodule
