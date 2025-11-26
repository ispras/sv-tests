// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.8 Detecting EOF
//         The following example returns a nonzero value when EOF has previously been detected
//         reading the input file fd. It returns zero otherwise.

// ! TYPE: POSITIVE

module test;

  integer fd, code;

  initial begin
    code = $feof(fd);
  end
endmodule
