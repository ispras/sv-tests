// IEEE Std 1364-2005
//   17. System tasks and functions
//     17.2 File input-output system tasks and functions
//       17.2.6 Flushing output
//         The following example writes any buffered output to the file(s) specified by mcd, to the
//         file specified by fd, or if $fflush is invoked with no arguments, to all open files.

// ! TYPE: POSITIVE

module test;

  integer fd, mcd;

  initial begin
    $fflush(mcd);
    $fflush(fd);
    $fflush();
  end
endmodule
