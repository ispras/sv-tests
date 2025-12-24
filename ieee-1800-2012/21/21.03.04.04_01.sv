// IEEE Std 1800-2012
//   21. Input/output system tasks and system functions
//    21.3 File input/output system tasks and system functions
//     21.3.4 Reading data from a file
//      21.3.4.4 Reading binary data

// ! TYPE: POSITIVE

module top;

  integer code, integral_var, mem, start, count, fd;

  initial begin
    code = $fread(integral_var, fd);
    code = $fread(mem, fd);
    code = $fread(mem, fd, start);
    code = $fread(mem, fd, start, count);
    code = $fread(mem, fd, , count);
  end

endmodule
